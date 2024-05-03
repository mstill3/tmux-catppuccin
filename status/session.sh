show_session() {
  local index icon color text module session_active_color session_inactive_color

  index=$1
  icon=$(get_tmux_option "@catppuccin_session_icon" "")

  session_active_color=$(get_tmux_option "@catppuccin_session_active_color" "$thm_red")
  session_inactive_color=$(get_tmux_option "@catppuccin_session_inactive_color" "$thm_green")

  color=$(get_tmux_option "@catppuccin_session_color" "#{?client_prefix,$session_active_color,$session_inactive_color}")
  text=$(get_tmux_option "@catppuccin_session_text" "#S")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
