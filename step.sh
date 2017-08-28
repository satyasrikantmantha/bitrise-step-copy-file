#!/bin/bash
set -ex

echo "Copy File"

#
# Required Parameters
if [ -z "${source_file_path}" ] ; then 
    echo " [!] Missing source file required input: source_file"
    exit 1
fi
if [ -z "${destination_file_path}" ] ; then 
    echo " [!] Missing destination file required input: destination_file"
fi

#
# Configs

echo " (i) Provided source file path                     :  ${source_file_path}"
echo " (i) Provided destination file path                :  ${destination_file_path}"


if ! cp -v ${source_file_path} ${destination_file_path};then
    echo " [!] Cannot copy file."
    exit 1
fi