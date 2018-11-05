# mps-dot
The Graphviz Dot language as a Jetbrains MPS language

The currently supported MPS version is **2018.2.1**.

The provided text generator language requires the mps-plaintextgen plugin from

    https://github.com/DSLFoundry/mps-plaintextgen/


Build this language as a plugin via

`ant -Dmps_home=PATH_TO_'MPS-2018.2.1-generic' -Dpath__plaintextgen=PATH_TO_PLAINTEXTGEN_PLUGIN  -file build.xml`
