export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye 1>/dev/null
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
eval "$(direnv hook zsh)"