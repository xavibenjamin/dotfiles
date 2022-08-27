autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "%{$fg_bold[green]%} \ue0a0 $(git_prompt_info)%{$reset_color%}"
    else
      echo "%{$fg_bold[red]%} \ue0a0 $(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo " %{$fg_bold[yellow]%}↑%{$reset_color%}"
  fi
}

node_version() {
  if which node &> /dev/null; then
    echo "%{$fg_bold[magenta]%}node(%{$fg[green]%}$(node -v)%{$fg[magenta]%})%{$reset_color%}"
  fi
}

directory_name() {
  echo "%{$fg_bold[cyan]%}%3~%\%{$reset_color%}"
}

export PROMPT=$'$(directory_name) $(node_version)$(git_dirty)$(need_push) '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
