if status is-interactive
  # Commands to run in interactive sessions can go here

  alias fv=ranger

  if test -n "$XDG_CURRENT_DESKTOP"
    # If graphic
    alias e=neovide
  else
    # If not graphic
    set -g -x EDITOR nvim
    alias e=nvim
  end
end
