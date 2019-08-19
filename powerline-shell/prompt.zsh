zmodload zsh/datetime
autoload -U add-zsh-hook

function start_powershell_duration_timer() {
  __TIMER=$EPOCHREALTIME
}
add-zsh-hook preexec start_powershell_duration_timer

function powerline_precmd() {
  local __ERRCODE=$?
  local __DURATION=0

  if [ -n $__TIMER ]; then
    local __ERT=$EPOCHREALTIME
    __DURATION="$(($__ERT - ${__TIMER:-__ERT}))"
  fi
  PS1="$($HOME/bin/powerline-go -modules 'exit,duration,time,nix-shell,venv,user,host,ssh,cwd,perms,git,jobs,newline,root,vgo' -duration $__DURATION -error $__ERRCODE -shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
  install_powerline_precmd
fi
