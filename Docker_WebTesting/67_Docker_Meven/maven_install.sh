#/bin/bash/

docker rm -f maven

docker run -d -ti --entrypoint="sleep" --name maven \
    -v $(pwd)/selenium:/usr/autotest \
    maven:3.8.6 \
    infinity

#    maven:3.5-jdk-8 \