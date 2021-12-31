#!/bin/bash

# George Martinec <developer.jirka.martinec@gmail.com>

# Remove specific Evaluation Key
for a in "AppCode" "CLion" "DataGrip" "DataSpell" "GoLand" "IntelliJ" "IntelliJIdea" "PhpStorm" "PyCharm" "Rider" "RubyMine" "WebStorm" "Resharper" "dotCover" "dotMemory" "dotPeak" "dotTrace"
do
    echo "Removing evaluation key for $a"
    rm -f $HOME/.config/JetBrains/$a*/eval/*.key
    rm -f $HOME/.config/JetBrains/$a*/*.key
    rm -f $HOME/.config/JetBrains/$a*/options/other.xml
done

# Remove prefs
rm -rf $HOME/.java/.userPrefs/jetbrains/
rm -f $HOME/.java/.userPrefs/prefs.xml

echo "Done!"
