if status is-interactive
  # Commands to run in interactive sessions can go here

  if test -z "$CONFIG_INITED"
    # init

    # envs
    set -g -x CONFIG_DIR ~/.config
    set -g -x MY_SCRIPT $CONFIG_DIR/MyScript

    set -g -x CONFIG_INITED TRUE
  end

  if test -n "$XDG_CURRENT_DESKTOP" || test -n "$WSL_DISTRO_NAME"
    # If graphic

    # envs
    set -x IS_GRAPHIC TRUE
  end

  alias e=editor
  alias fm=ranger
end
