# mps-dot

## Description

The [Graphviz Dot](https://de.wikipedia.org/wiki/DOT_(GraphViz)) language as a [Jetbrains MPS](https://en.wikipedia.org/wiki/JetBrains_MPS) language.

The currently supported MPS version is **2021.2.3**. Other supported versions are on their respective branches prefixed with `maintenance/mps20XXY`.

The implemented dot-to-text generator requires the `mps-plaintextgen` plugin which is part of the [mps-extensions](https://github.com/JetBrains/MPS-extensions).


## Build Instructions

A build requires at least Java 11 to kick off. Build is started via:

```
./gradlew # Mac and Linux
```

or
```
# gradlew.bat # Windows
```

All dependencies (including the correct Java version for the build itself) are obtained automatically by gradle. The build generates artifacts to `build/artifacts/`.
