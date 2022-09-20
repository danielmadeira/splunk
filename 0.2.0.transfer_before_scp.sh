#!/bin/bash
rm -rf /Users/dmadeira/scripts/orca_prod/case
mkdir -p /Users/dmadeira/scripts/orca_prod/case
MY_DIR="/Users/dmadeira/Downloads/"
DEST="/Users/dmadeira/scripts/orca_prod/case/"
FILEEXT="zip"
FILEEXT1="tar.gz"

NEWEST=`ls -tr1d "${MY_DIR}/"*.${FILEEXT} 2>/dev/null | tail -5`

if [ -z "${NEWEST}" ] ; then
    echo "No file to copy"
    exit 1
elif [ -d "${NEWEST}" ] ; then
    echo "The most recent entry is a directory"
    exit 1
else
    echo "Copying ${NEWEST}"
    cp -p "${NEWEST}" "${DEST}"
fi

NEWEST1=`ls -tr1d "${MY_DIR}/"*.${FILEEXT1} 2>/dev/null | tail -5`

if [ -z "${NEWEST1}" ] ; then
    echo "No file to copy"
    exit 1
elif [ -d "${NEWEST1}" ] ; then
    echo "The most recent entry is a directory"
    exit 1
else
    echo "Copying ${NEWEST1}"
    cp -p "${NEWEST1}" "${DEST}"
fi

echo " proceed to 0.2.1scp_orca.sh from your MAC terminal "
