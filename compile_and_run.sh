#!/bin/bash

# Ensure a filename is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <source_file.c>"
    exit 1
fi

# Define paths
SOURCE_NAME="$1"
SOURCE_FILE="src/test/code_gen_tests/c_files/$SOURCE_NAME"
OUTPUT_FILE="src/test/code_gen_tests/asm_files/${SOURCE_NAME%.c}.asm"
JAR_FILE="tools/Mars4_5.jar"

# Ensure the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file '$SOURCE_FILE' not found!"
    exit 1
fi

# Step 0: Build project
ant build

# Step 1: Compile C to MIPS Assembly
echo "Compiling '$SOURCE_FILE' into MIPS assembly"
java -cp bin Main3 -gen "$SOURCE_FILE" "$OUTPUT_FILE"

if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

echo "Generated assembly file: $OUTPUT_FILE"

# Step 2: Assemble and run with MARS
echo "Assembling and running with MARS..."
java -jar "$JAR_FILE" sm nc me "$OUTPUT_FILE"

if [ $? -ne 0 ]; then
    echo "MIPS execution failed!"
    exit 1
fi

echo "Execution completed."

