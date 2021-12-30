pluginManagement {

    val gpruser: String? by extra
    val gprtoken: String? by extra
    val githubUsername = System.getenv("GITHUB_ACTOR") ?: gpruser as String?
    val githubToken = System.getenv("GITHUB_TOKEN") ?: gprtoken as String?

    if(githubUsername == null || githubToken == null) {
        throw GradleException("No credentials found via envrionment variable (\$GITHUB_ACTOR/\$GITHUB_TOKEN) or via gradle properties (gpruser/gprtoken) for auth towards Github packages")
    }

    repositories {
        mavenLocal()
        maven {
            url = uri("https://maven.pkg.github.com/mbeddr/mps-gradle-plugin")
            credentials {
                username = githubUsername
                password = githubToken
            }
        }
        // maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
        gradlePluginPortal()
    }
}

rootProject.name = "libre.doge.mps.dot"
