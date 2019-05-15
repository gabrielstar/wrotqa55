setlocal EnableDelayedExpansion
set prepare_command=mvn -f ../../pom.xml clean -DskipTests=true
set test_command=mvn -f ../../pom.xml  verify ^
-DmaxUsers="6"

%prepare_command% && %test_command%