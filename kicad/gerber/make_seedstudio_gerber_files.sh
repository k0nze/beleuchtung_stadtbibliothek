#!/bin/bash

NAME="beleuchtung_stadtbibliothek"
NEW_FILES=""

for FILE in $(ls); do
    EXTENSION=${FILE##*.}
    FILENAME=${FILE%.*}
    NEW_FILE=""
    case "${EXTENSION}" in
        ("gbl")
            NEW_FILE=${NAME}.GBL
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
        ("gbs")
            NEW_FILE=${NAME}.GBS
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
        ("gbo")
            NEW_FILE=${NAME}.GBO
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
        ("gm1")
            NEW_FILE=${NAME}.GML
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
        ("gtl")
            NEW_FILE=${NAME}.GTL
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
        ("gts")
            NEW_FILE=${NAME}.GTS
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
        ("gto")
            NEW_FILE=${NAME}.GTO
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
        ("drl")
            NEW_FILE=${NAME}.TXT
            NEW_FILES="${NEW_FILES} ${NEW_FILE}"
            cp -vf ${FILE} ${NEW_FILE}
        ;;
    esac
done

zip ${NAME}.zip ${NEW_FILES}
