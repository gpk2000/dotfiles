xset r rate 300 50
export PATH=$HOME/.local/bin/:$PATH
source $HOME/antigen.zsh

alias install="sudo apt-fast install"           #apt-get wrapper for better performance.
alias upgrade='sudo apt-fast upgrade'           #sudo apt-get upgrade
alias update='sudo apt-fast update'             #sudo apt-get update
alias remove="sudo apt remove"
alias purge="sudo apt purge"
alias autoremove="sudo apt autoremove"

alias pip=pip3
alias python=python3
alias ybest='youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" '
alias y480='youtube-dl -f "bestvideo[height<=480][ext=mp4]+bestaudio[ext=m4a]" '
alias y720='youtube-dl -f "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]" '
alias mp3="youtube-dl --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --embed-thumbnail --add-metadata --output '%(autonumber)s-%(title)s.%(ext)s'"          #youtube-dl for single song. Adds Metadata and Thumbnail plus highest quality.
alias playlist="youtube-dl --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --yes-playlist --add-metadata --embed-thumbnail --output '%(autonumber)s-%(title)s.%(ext)s'"  #youtube-dl for playlist. Adds Metadata and Thumbnail plus highest quality.

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle systemd
antigen bundle colored-man-pages
antigen bundle ubuntu
antigen bundle web-search

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme random

# Tell Antigen that you're done.
antigen apply
