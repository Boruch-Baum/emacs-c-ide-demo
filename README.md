Quick and easy setup of an fully-functional emacs IDE

Quick and easy setup of an fully-functional emacs IDE, including
having emacs download programs from internet repositories, compiling
the programs, and configuring their use.

Reference:

   https://boruch-baum.github.io/emacs_mini_manual/c-ide.html

Instructions:

1) Download the repository

2) Copy the entire emacs_ide_demo folder to your ~/.emacs.d/

     M-! cp emacs_ide_demo ~/.emacs.d/

3) Update the emacs repository package lists.

     M-x package-refresh-contents

4) Set-up the IDE.

     M-x load-file ~/.emacs.d/init.el


This is modified fork of: https://github.com/tuhdo/emacs-c-ide-demo
