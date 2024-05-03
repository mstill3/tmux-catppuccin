show_session() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@catppuccin_session_icon" "")
  color=$(get_tmux_option "@catppuccin_session_color" "#{?client_prefix,#f7768e,#9ece6a}")
  text=$(get_tmux_option "@catppuccin_session_text" "#S")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
