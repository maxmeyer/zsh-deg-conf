zstyle ':vcs_info:*'      enable  git hg svn bzr
zstyle ':vcs_info:*'      disable cdv darcs mtn p4 svk tla
zstyle ':vcs_info:*'              actionformats "[%s:b|%a]"
zstyle ':vcs_info:*'              formats       "[%s:%b]"
zstyle ':vcs_info:cvs:*'          formats       "[%s:%r]"
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat  "[%b:%r]"

precmd() {
  print -Pn "\e]0;%n@%m: %~\a"
  vcs_info
}

PROMPT='${vcs_info_msg_0_}%# '
RPROMPT="[%n@%m]"
