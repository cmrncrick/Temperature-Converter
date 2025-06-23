# Fortran Temperature Converter

This is a command-line Fortran program that converts temperatures between Fahrenheit, Celsius, and Kelvin.  
It includes user-friendly input validation and supports quitting at any input step.

## Features

- Convert temperatures between Fahrenheit, Celsius, and Kelvin
- Input validation for temperature values and unit choices
- Interactive prompts with error messages for invalid inputs
- Option to quit at any prompt

## Getting Started

### Prerequisites

- [GFortran](https://gcc.gnu.org/fortran/) or another Fortran compiler

### Building

Clone the repository and compile with:

```bash
gfortran temp_converter.f90 temperature_utils.f90 -o temp_converter
```

### Running

Start the program from your terminal:

```bash
./temp_converter.exe
```

### Usage Example

Choose unit to convert from: (f)ahrenheit, (c)elsius, (k)elvin or (q) to quit
f
Enter temperature value to convert or (q) to quit
100
What unit do you want to convert to: (f)ahrenheit, (c)elsius, (k)elvin or (q) to quit
c
Converted temperature:   37.78

### File Overview

- temp_converter.f90
- temperature_utils.f90

### Notes

- Enter 'q' at any prompt to quit the program
- Only single-character inputs are accepted for unit selection.
