# home_environment
A good home environment for UNIX OSes with GNU/Bash

    1) Clone this repo into your $HOME directory and leave it there
       git clone https://github.com/szoftveres/home_environment.git

    2) Include '.bashrc_extension' file in your .bashrc
       echo "source ${HOME}/home_environment/.bashrc_extension" >> ~/.bashrc

bin/
 * crun - run a simple C program as if it was a script
 * f - interactive recursive egrep
 * ishidden - returns true '0' if file name begins with dot
 * subst - recursive sed 's/././g', perfect tool for renaming variables
 * mydiff - advanced context based diff and review tool
 * sources - collect all source code files into sources.list
 * csd - generate cscope database
 * tagdd - generate ctags database
 * cs - call cscope

Tested with:
 * Various Linux distros
 * MINIX 3
 * Mac OS X

