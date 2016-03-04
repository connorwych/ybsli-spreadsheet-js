#!/bin/bash

#Build CSS file from BootStrap Less files
cd src/less 
lessc bootstrap.less > bootstrap.css 
mv bootstrap.css ../../css
echo -e '\n  completed build of bootstrap.css\n\n'
lessc --clean-css bootstrap.less > bootstrap.min.css
mv bootstrap.min.css ../../css
echo -e '\n  completed build of bootstrap.min.css\n\n'





