#!/bin/bash
directorio=~/Docear/projects/UML/Sistema\ de\ Farmacia/
echo convirtiendo archivos .plantuml
echo en archivos png
rm *.png
rm -f "$directorio"*.png
find $PWD -name "*.plantuml" | xargs -L1 -I archivo java -jar plantuml.jar archivo
echo creando enlaces
find $PWD -name "*.png" |  xargs  -I archivo ln archivo  "$directorio"
echo proceso terminado
