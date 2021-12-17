# Git Related Aliases

alias g='git'
alias gb='g branch'
alias gbr='gb -m'
alias gc='g commit'
alias gca='g commit -a'
alias gco='g checkout'

alias glog="g log --graph --pretty=format:'%Cred%h%Creset %an %Cblue<%ae>%Creset: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='g push origin HEAD'
alias gp1='g push -u origin HEAD'
alias gs='g status -sb'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='g diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
