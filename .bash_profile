# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#
# set environment variables for 
# JetS3t (Amazon S3 backup program)
#
# JETS3THOME=$HOME/bin/jets3t/bin ;export JETS3THOME

HISTIGNORE="&:ls:[bf]g:exit:bye:ll:lsa:la:gcc:[ \t]*";export HISTIGNORE

# BASH
export BASH_ENV=$HOME/.bashrc
export USERNAME=""

# Set DISPLAY
# export DISPLAY=":0.0"

# My Paths
# export PATH=$PATH:$HOME/bin:
export PATH="$PATH":$HOME/bin
export PATH=$PATH:$HOME/local/bin

# PREFIX
export PREFIX=/usr/local

# Terminal colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# CUDA

export PATH=/Developer/NVIDIA/CUDA-5.5/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-5.5/lib:$DYLD_LIBRARY_PATH

##
# Your previous /Users/sdturne/.bash_profile file was backed up as /Users/sdturne/.bash_profile.macports-saved_2011-09-12_at_02:31:52
##

# MacPorts Installer addition on 2011-09-12_at_02:31:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/sdturne/.bash_profile file was backed up as /Users/sdturne/.bash_profile.macports-saved_2014-01-16_at_00:08:05
##

# MacPorts Installer addition on 2014-01-16_at_00:08:05: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

