import de.itemis.mps.gradle.downloadJBR.DownloadJbrForPlatform
import de.itemis.mps.gradle.BuildLanguages

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

val mpsDependencies: Configuration by configurations.creating
val mps: Configuration by configurations.creating
val buildDependencies: Configuration by configurations.creating

dependencies {
    mpsDependencies("de.itemis.mps:extensions:2020.3.+")
    mps("com.jetbrains:mps:2020.3.5")
    buildDependencies("org.apache.ant:ant-junit:1.10.6")
}

val codeDir = file("mps")
val mpsDir = file("$buildDir/mps")
val dependencyDir = file("$codeDir/dependencies")
val jbrDir = file("$buildDir/jbr")

downloadJbr {
    jbrVersion = "11_0_10-b1145.96"
    downloadDir = jbrDir
}

println("####################################")
println("Versions:")
println("\tmpsDependencies: " + mps.resolve())
println("\tProject directory: " + projectDir)
println("\tBuild directory: " + buildDir)
println("\tJBR directory: " + jbrDir)
println("####################################")

val extractMps by tasks.registering(Copy::class) {
    from({ mps.resolve().map { zipTree(it) } })
    into(mpsDir)
}

val extractMpsDependencies by tasks.registering(Copy::class) {
    from({ mpsDependencies.resolve().map { zipTree(it) } })
    into(dependencyDir)
}

fun antVar(name: String, value: String)  = "-D$name=$value"

val setup by tasks.registering {
    group = "Setup"
    description = "Download and extract MPS and the projects MPS dependencies."
    dependsOn(extractMps)
    dependsOn(extractMpsDependencies)
    val downloadJbrForPlatform = tasks.getByName("downloadJbr", DownloadJbrForPlatform::class)
    dependsOn(downloadJbrForPlatform)
    ext["itemis.mps.gradle.ant.defaultJavaExecutable"] = downloadJbrForPlatform.javaExecutable
    ext["itemis.mps.gradle.ant.defaultScriptArgs"] =
        listOf(
            antVar("mps_home", mpsDir.absolutePath),
            antVar("dependencyDir", dependencyDir.absolutePath),
            antVar("mps.generator.skipUnmodifiedModels", "true")
        )
    ext["itemis.mps.gradle.ant.defaultScriptClasspath"] = buildDependencies.fileCollection { true }
}

val buildScripts by tasks.registering(BuildLanguages::class) {
    dependsOn(setup)
    script = "$projectDir/mps/buildAll.xml"
}

val buildLanguages by tasks.registering(BuildLanguages::class) {
    group = "build"
    description = "Build all languages in the MPS project"
    script = "$buildDir/../buildPlugin.xml"
    dependsOn(buildScripts)
}
