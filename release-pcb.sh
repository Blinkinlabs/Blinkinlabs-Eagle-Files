#!/bin/bash

PROJECT_NAME=$1  # Project name (ex: DmxAnalogLed)
RELEASE_NAME=$2  # Relase version (ex: RevA)

RELEASE_DIR=${PROJECT_NAME}_${RELEASE_NAME}_`date "+%Y-%m-%d_%H%M"`

# Create the diretory
if [ -d "${RELEASE_DIR}" ]; then
  echo "Release directory already exists, remove it before continuing!"
  exit 1
fi
mkdir ${RELEASE_DIR}

# Move the gerber files into the directory
# G*L: Copper
# G*O: SIlkscreen
# G*S: Soldermask
# G*P: Solder paste (for solderpaste stencil)
# TXT: Drill file
mv ${PROJECT_NAME}.G?L ${RELEASE_DIR}
mv ${PROJECT_NAME}.G?O ${RELEASE_DIR}
mv ${PROJECT_NAME}.G?S ${RELEASE_DIR}
mv ${PROJECT_NAME}.G?P ${RELEASE_DIR}
mv ${PROJECT_NAME}.TXT ${RELEASE_DIR}

zip -r ${RELEASE_DIR} ${RELEASE_DIR}/*
