pluginManagement {

    val gpr_user: String? by extra
    val gpr_token: String? by extra
    val githubUsername = System.getenv("GITHUB_ACTOR") ?: gpr_user
    val githubToken = System.getenv("GITHUB_TOKEN") ?: gpr_token

    if(githubUsername == null || githubUsername == "" ) {
        throw GradleException("No credentials found via envrionment variable (\$GITHUB_ACTOR) or via gradle properties (gpr_user) for auth towards Github packages")
    } else {
        println("githubUsername in settings: " + githubUsername)
    }

    if(githubToken == null || githubToken == "") {
        throw GradleException("No credentials found via envrionment variable (\$GITHUB_TOKEN) or via gradle properties (gpr_token) for auth towards Github packages")
    }

    repositories {

        maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }

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
