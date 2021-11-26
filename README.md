# ipaReBuilder
Batch script that makes a installable clone of iPogo app and changes the app icon

What it does?
This batch script unzips the ipogo.ipa, change the app icon and update the Info.plist file to allow the installation of a duplicate app.
This can be used if you have multiple accounts and you need to play them all at the same time.

How to use?
1) Place contents of \plutil folder in \make\replace\plutil
2) Place ipogo.ipa in \make and run ipaReBuild.bat

The cloned app will be in \out folder. This script can be tweaked to make multiple installable copies at once.

After the build process the \temp folder can be erased.
