import de.itemis.mps.gradle.downloadJBR.DownloadJbrForPlatform
import de.itemis.mps.gradle.BuildLanguages
import de.itemis.mps.gradle.GitBasedVersioning

import kotlin.reflect.KProperty1
import kotlin.reflect.full.memberProperties

buildscript {
    repositories {
        maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
        mavenCentral()
    }

    dependencies {
        classpath("de.itemis.mps:mps-gradle-plugin:1.5.269.964f94a")
    }
}

plugins {
    id("download-jbr") version "1.5.269.964f94a"
}

repositories {
    maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
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
val gitBranch: String = GitBasedVersioning.getGitBranch()

downloadJbr {
    jbrVersion = Versions.jbr
}

// dependency versions
object Versions {
    // java
    public const val jbr: String = "11_0_10-b1145.96"
    public const val jbrsdk: String = "11_0_10-b1145.96"
    //TODO: how to use this in plugins block?
    public const val downloadJBR: String = "1.5.269.964f94a"

    // mps
    public const val mpsMajor: String = "2020"
    public const val mpsMinor: String = "3"
    public const val mpsPatch: String = "5"
    public const val mpsMajorMinor: String = Versions.mpsMajor + "." + Versions.mpsMinor
    public const val mpsFull: String = Versions.mpsMajorMinor + "." + Versions.mpsPatch

    // mps dependencies
    public const val extensions: String = "2020.3.2132.3630910"
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
        logger.lifecycle("MPS directory: {}", mpsDir)

        logger.lifecycle("Dependency verisons: {}", Versions.toString())
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
            antVar("build.dir", "./")
        )
    ext["itemis.mps.gradle.ant.defaultScriptClasspath"] = buildDependencies.fileCollection { true }
}

val buildScripts by tasks.registering(BuildLanguages::class) {
    dependsOn(setup)
    script = "$projectDir/buildAll.xml"
}

val buildLanguages by tasks.registering(BuildLanguages::class) {
    group = "build"
    description = "Build all languages in the MPS project"
    script = "$buildDir/build.xml"
    dependsOn(buildScripts)
}

defaultTasks("buildLanguages")

