import de.itemis.mps.gradle.downloadJBR.DownloadJbrForPlatform
import de.itemis.mps.gradle.BuildLanguages
import de.itemis.mps.gradle.GitBasedVersioning

import kotlin.reflect.KProperty1
import kotlin.reflect.full.memberProperties

buildscript {
    repositories {
        maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
    }

    dependencies {
        classpath("de.itemis.mps:mps-gradle-plugin:1.28.0.1.f8ee996")
    }
}

plugins {
    id("maven-publish")
    id("download-jbr") version "1.5.269.964f94a"
}

repositories {
    // Obtain gihub credentials for github packages access
    val gpr_user: String? by extra
    val gpr_token: String? by extra
    val githubUsername = System.getenv("GITHUB_ACTOR") ?: gpr_user
    val githubToken = System.getenv("GITHUB_TOKEN") ?: gpr_token

    if(githubUsername == null || githubUsername == "" ) {
        throw GradleException("No credentials found via envrionment variable (\$GITHUB_ACTOR) or via gradle properties (gpr_user) for auth towards Github packages")
    }

    if(githubToken == null || githubToken == "") {
        throw GradleException("No credentials found via envrionment variable (\$GITHUB_TOKEN) or via gradle properties (gpr_token) for auth towards Github packages")
    }

    maven {
        url = uri("https://maven.pkg.github.com/JetBrains/MPS-extensions")
        credentials {
            username = githubUsername
            password = githubToken
        }
    }

    maven {
        url = uri("https://maven.pkg.github.com/mbeddr/build.publish.jdk")
        credentials {
                username = githubUsername
                password = githubToken
        }
    }

    maven {
        url = uri("https://artifacts.itemis.cloud/repository/maven-mps/")
    }

    //maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
    mavenCentral()
}

// configurations
val mpsDependencies: Configuration by configurations.creating
val mps: Configuration by configurations.creating
val buildDependencies: Configuration by configurations.creating

dependencies {
    mpsDependencies("de.itemis.mps:extensions:" + Versions.extensions)
    mps("com.jetbrains:mps:" + Versions.mpsFull)
    buildDependencies("org.apache.ant:ant-junit:" + Versions.antjunit)
}

// misc
val codeDir = file("mps")
val mpsDir = file("$buildDir/mps")
val dependencyDir = file("$codeDir/dependencies")
val jbrDir = file("$buildDir/jbr")
val publishDir = file("$buildDir/dist")
val gitBranch: String = GitBasedVersioning.getGitBranch()

downloadJbr {
    jbrVersion = Versions.jbr
}

// dependency versions
object Versions {
    public const val groupID: String = "libre.doge.mps"
    public const val artifactID: String = "dot"
    public const val fullID: String =  Versions.groupID + "." + Versions.artifactID
    // java
    public const val jbr: String = "11_0_14_1-b1751.46"
    public const val jbrsdk: String = "11_0_14_1-b1751.46"
    //TODO: how to use this in plugins block?
    public const val downloadJBR: String = "1.6.281.3790039"

    // mps
    public const val mpsMajor: String = "2021"
    public const val mpsMinor: String = "3"
    public const val mpsPatch: String = "5"
    public const val mpsMajorMinor: String = Versions.mpsMajor + "." + Versions.mpsMinor
    public const val mpsFull: String = Versions.mpsMajorMinor + "." + Versions.mpsPatch

    // this project
    public const val buildVerison: String = Versions.mpsFull + "-SNAPSHOT"

    // mps dependencies
    public const val extensions: String = "2021.3.2869.e5eae69"
    public const val antjunit: String = "1.10.6"

    override fun toString() : String{
        return "\n"+ this::class.java.declaredFields.filter{ it.name != "INSTANCE" }.map { " - ${it.name} = \"${it.get(Versions)}\"" }.joinToString("\n")
    }

}

// tasks
val extractMps by tasks.registering(Copy::class) {
    from({ mps.resolve().map { zipTree(it) } })
    into(mpsDir)
}

val extractMpsDependencies by tasks.registering(Copy::class) {
    from({ mpsDependencies.resolve().map { zipTree(it) } })
    into(dependencyDir)
}

fun antVar(name: String, value: String)  = "-D$name=$value"

val printVersions by tasks.registering {
    doFirst {
        // print sanity feedback
        logger.lifecycle("\n--------------------\nBuild Info:\n--------------------")
        logger.lifecycle("Java path {}", project.ext["itemis.mps.gradle.ant.defaultJavaExecutable"])
        logger.lifecycle("gitBranch: {}", gitBranch)
        logger.lifecycle("Project directory: {}", projectDir)
        logger.lifecycle("JBR directory: {}", jbrDir)
        logger.lifecycle("Java version: {}", JavaVersion.current())
        logger.lifecycle("gradle version: {}", project.gradle.gradleVersion)

        // println("CI build: "+ ext["ciBuild"])
        logger.lifecycle("Build directory: {}", buildDir)
        logger.lifecycle("Publish directory: {}", publishDir)
        logger.lifecycle("MPS directory: {}", mpsDir)

        logger.lifecycle("Dependency versions: {}", Versions.toString())
    }
}

val setup by tasks.registering {
    group = "Setup"
    description = "Download and extract MPS and the projects MPS dependencies."
    dependsOn(extractMps)
    dependsOn(extractMpsDependencies)
    val downloadJbrForPlatform = tasks.getByName("downloadJbr", DownloadJbrForPlatform::class)
    dependsOn(downloadJbrForPlatform)
    dependsOn(printVersions)
    ext["itemis.mps.gradle.ant.defaultJavaExecutable"] = downloadJbrForPlatform.javaExecutable
    ext["itemis.mps.gradle.ant.defaultScriptArgs"] =
        listOf(
            antVar("mps_home", mpsDir.absolutePath),
            antVar("dependencyDir", dependencyDir.absolutePath),
            antVar("mps.generator.skipUnmodifiedModels", "true"),
            antVar("build.dir", "$buildDir/")
        )
    ext["itemis.mps.gradle.ant.defaultScriptClasspath"] = buildDependencies.fileCollection { true }
}

val buildScripts by tasks.registering(BuildLanguages::class) {
    dependsOn(setup)
    script = "$projectDir/buildAll.xml"
}

val buildLanguages by tasks.registering(BuildLanguages::class) {
    dependsOn(buildScripts)
    group = "build"
    description = "Build all languages in the MPS project"
    script = "$buildDir/build.xml"
}

defaultTasks("buildLanguages")

// Publishing
val packageMpsPlugin by tasks.registering(Zip::class) {
    dependsOn(buildLanguages)
    archiveFileName.set(Versions.groupID + "." + Versions.artifactID + "." + Versions.buildVerison + ".zip")

    from(file("build/artifacts/de.doge.mps.dot.build"))
    destinationDirectory.set(publishDir)
}


val branch = GitBasedVersioning.getGitBranch()

publishing {
    repositories {
        if(branch.equals("main") || branch.equals("maintenance")) {
            logger.lifecycle("Will publish, (branch is '{}')", branch)
            maven {
                name = "GitHubPackages"
                url = uri("https://maven.pkg.github.com/nkoester/mps-dot")
                credentials {
                    // or use githubUsername and githubToken ?
                    username = project.findProperty("gpr_user") as String? ?: System.getenv("GITHUB_ACTOR") as String?
                    password = project.findProperty("gpr_token") as String? ?: System.getenv("GITHUB_TOKEN") as String?
                }
            }
        } else {
            logger.lifecycle("Will not publish, (branch is '{}')", branch)
        }

    }
    publications {
        create<MavenPublication>("packagedModules"){
            artifactId = Versions.artifactID
            groupId = Versions.groupID
            version = Versions.buildVerison
            artifact(packageMpsPlugin)
        }
    }

}

