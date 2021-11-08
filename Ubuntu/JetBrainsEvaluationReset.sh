#!/bin/bash

# George Martinec <developer.jirka.martinec@gmail.com>

# Remove specific Evaluation Key
for a in "AppCode" "CLion" "DataGrip" "DataSpell" "GoLand" "IntelliJ" "IntelliJIdea" "PhpStorm" "PyCharm" "Rider" "RubyMine" "WebStorm" "Resharper" "dotCover" "dotMemory" "dotPeak" "dotTrace"
do
    echo "Removing evaluation key for $a"
    rm $HOME/.config/JetBrains/$a*/eval/*.key
    rm $HOME/.config/JetBrains/$a*/options/other.xml
done

# Remove prefs
rm -rf $HOME/.java/.userPrefs/jetbrains/
rm $HOME/.java/.userPrefs/prefs.xml

echo "Done!"
