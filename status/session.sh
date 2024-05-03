show_session() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@catppuccin_session_icon" "")

  active_color="@catppuccin_session_active_color"
  inactive_color="@catppuccin_session_inactive_color"

  color="$active_color"  # Default to active color
  if [ "$client_prefix" = "" ]; then
      color="$inactive_color"  # Set to inactive color if client_prefix is empty
  fi

  text=$(get_tmux_option "@catppuccin_session_text" "#S")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
