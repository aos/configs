if type brew &>/dev/null; then
  HOMEBREW_PREFIX=$(brew --prefix)
  for COMPLETION in "$HOMEBREW_PREFIX"/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]];
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
fi
