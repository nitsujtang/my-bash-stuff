#!/bin/bash

if [ -f ~/.bashrc ] ; then
    echo "saving old .bashrc"

    if [ -f ~/.bashrc.bak ] ; then
        rm ~/.bashrc.bak
    fi

    mv ~/.bashrc ~/.bashrc.bak

    echo "copying over new .bashrc"
    cp ./.bashrc ~
else
    echo "copying over new .bashrc"
    cp ./.bashrc ~
fi

if [ -f ~/.bash_aliases ] ; then
    echo "saving old .bash_aliases"

    if [ -f ~/.bash_aliases.bak ] ; then
        rm ~/.bash_aliases.bak
    fi

    mv ~/.bash_aliases ~/.bash_aliases.bak

    echo "copying over new .bash_aliases"
    cp ./.bash_aliases ~
else
    echo "copying over new .bash_aliases"
    cp ./.bash_aliases ~
fi

echo "DONE"
source ~/.bashrc
