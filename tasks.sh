#!/bin/bash
for argument in "$@"
do
case $argument in
	overlaypdf)
		../../jdk/bin/java -jar ../../jdk/pdfbox-app-2.0.4.jar OverlayPDF input.pdf overlay.pdf output.pdf
	;;
	becomeinitialcommit)
		rm -rf .git
		git init
		git add --all
		git commit -m "become initial commit"
		git remote add origin https://github.com/albraga/namus_overlaypdf.git
		git push -u --force origin master
	;;
	makemavenproject)
		D:/apache-maven-3.3.9/bin/mvn archetype:generate -DgroupId=io.github.albraga -DartifactId=project -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
	;;
esac
done
