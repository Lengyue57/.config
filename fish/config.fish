if status is-interactive
  # Commands to run in interactive sessions can go here

  if test -n "$XDG_CURRENT_DESKTOP"
    # If graphic
  else
    # If not graphic

    # envs
    set -g -x CONFIG_DIR ~/.config
    set -g -x MY_SCRIPT $CONFIG_DIR/MyScript
    set -g -x EDITOR $MY_SCRIPT/editor
  end

  alias e=$EDITOR
  alias fm=ranger
end
