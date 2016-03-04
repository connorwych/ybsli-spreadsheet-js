#!/bin/bash

#Build HTML from Jade Files
cd src/jade
for f in *.jade;
    do 
#	echo "Processing $f" 	
	jade $f --pretty
done;

rm head.html
rm navigation.html
rm footer.html
mv *.html ../..

#Build CSS file from BootStrap Less files
cd ../less 
lessc bootstrap.less > bootstrap.css 
mv bootstrap.css ../../css
echo -e 'completed build of bootstrap.css\n'
#Don't need minified CSS yet
#lessc --clean-css bootstrap.less > bootstrap.min.css
#mv bootstrap.min.css ../../css
#echo -e '\n  completed build of bootstrap.min.css\n\n'





