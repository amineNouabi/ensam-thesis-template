#!/bin/bash

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Retreive main tex file name without extension
MAIN_FILE_NAME="$(basename $(find $ROOT_DIR -maxdepth 1 -name '*.tex') | sed 's/\.tex$//')"

# Remove the PDF file
rm -f $ROOT_DIR/$MAIN_FILE_NAME.pdf

# Remove all auxiliry files in the root directory
rm -f $ROOT_DIR/$MAIN_FILE_NAME.err $ROOT_DIR/$MAIN_FILE_NAME.acn $ROOT_DIR/$MAIN_FILE_NAME.acr $ROOT_DIR/$MAIN_FILE_NAME.alg $ROOT_DIR/$MAIN_FILE_NAME.aux $ROOT_DIR/$MAIN_FILE_NAME.bbl $ROOT_DIR/$MAIN_FILE_NAME.bcf $ROOT_DIR/$MAIN_FILE_NAME.blg $ROOT_DIR/$MAIN_FILE_NAME.glg $ROOT_DIR/$MAIN_FILE_NAME.glo $ROOT_DIR/$MAIN_FILE_NAME.gls $ROOT_DIR/$MAIN_FILE_NAME.ist $ROOT_DIR/$MAIN_FILE_NAME.lof $ROOT_DIR/$MAIN_FILE_NAME.log $ROOT_DIR/$MAIN_FILE_NAME.lot $ROOT_DIR/$MAIN_FILE_NAME.out $ROOT_DIR/$MAIN_FILE_NAME.run.xml $ROOT_DIR/$MAIN_FILE_NAME.synctex.gz $ROOT_DIR/$MAIN_FILE_NAME.toc $ROOT_DIR/indent.log
rm -rf $ROOT_DIR/_minted-$MAIN_FILE_NAME

# Remove all nested auxiliary files
rm -f $ROOT_DIR/**/*.aux
