if status is-interactive
  # Commands to run in interactive sessions can go here

  if test -n "$XDG_CURRENT_DESKTOP" || test -n "$WSL_DISTRO_NAME"
    # If graphic

    # envs
    set -g -x IS_GRAPHIC TRUE
  else
    # If not graphic

    # envs
    set -g -x CONFIG_DIR ~/.config
    set -g -x MY_SCRIPT ../MyScript
  end

  alias e=editor
  alias fm=ranger
end
