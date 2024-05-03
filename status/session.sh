show_session() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@catppuccin_session_icon" "")
  
  active_color="@catppuccin_session_active_color"
  inactive_color="@catppuccin_session_inactive_color"

  color=$(get_tmux_option "@catppuccin_session_color" "#{?client_prefix,$active_color,$inactive_color}")
  text=$(get_tmux_option "@catppuccin_session_text" "#S")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
