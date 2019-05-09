#!/bin/sh

FILE=/usr/local/stubby.yml
DIRECTORY=/usr/local/stub/

createStubFile(){
    find ${DIRECTORY} -name "*.yml" | xargs cat > ${FILE}
}

createStubFile
