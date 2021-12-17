# mps-dot

## Description

The Graphviz Dot language as a Jetbrains MPS language

The currently supported MPS version is **2020.3.5**.

The implemented dot to text generator requires the `mps-plaintextgen` plugin which is part of the `mps-extensions`.


## Build Instructions

A bould requires at least Java 11 to kick off. Build is started via

```
./gradlew build
```
All dependencies are obtained automatically by gradle. And the correct Java version for the build itself is also downloaded

Artifacts are generated to `build/artifacts/de.doge.mps.dot`.
