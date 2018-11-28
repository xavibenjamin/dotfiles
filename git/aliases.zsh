# Git Related Aliases

alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'

alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an %Cblue<%ae>%Creset: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gp1='git push -u origin HEAD'
alias gs='git status -sb'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
