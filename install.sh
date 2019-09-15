#!/bin/bash
sudo apt-get install cowsay >> /dev/null

if [ -f "~/.bashrc" ] ; then
    echo "saving old .bashrc"
    rm ~/.bashrc.bak
    mv ~/.bashrc ~/.bashrc.bak

    echo "copying over new .bashrc"
    cp ./.bashrc ~
fi

if [ -f "~/.bash_aliases" ] ; then
    echo "saving old .bash_aliases"
    rm ~/.bash_aliases.bak
    mv ~/.bash_aliases ~/.bash_aliases.bak

    echo "copying over new .bash_aliases"
    cp ./.bash_aliases ~
fi

echo "DONE"
