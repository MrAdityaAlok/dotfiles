fish_color_normal normal
fish_color_command {{colors.primary.default.hex_stripped}}
fish_color_param {{colors.secondary.default.hex_stripped | set_lightness: -2.0}}
fish_color_quote {{colors.tertiary.default.hex_stripped}}
fish_color_end {{colors.tertiary_fixed_dim.default.hex_stripped | set_lightness: -5.0}}
fish_color_comment {{colors.outline_variant.default.hex_stripped}}
fish_color_error {{colors.error.default.hex_stripped}}
fish_color_autosuggestion {{colors.outline.default.hex_stripped}}
fish_color_redirection {{colors.inverse_primary.default.hex_stripped}}
fish_color_valid_path --underline
fish_color_search_match bryellow --background=brblack
fish_color_selection white --bold --background=brblack
fish_color_cancel -r
fish_pager_color_prefix white --bold --underline
fish_pager_color_description {{colors.tertiary.default.hex_stripped}} yellow
fish_color_history_current --bold

fish_color_escape {{colors.outline.default.hex_stripped}}
fish_color_host normal
fish_color_host_remote yellow
fish_color_keyword {{colors.secondary.default.hex_stripped}}
fish_color_match {{colors.tertiary.default.hex_stripped}}
fish_color_operator {{colors.tertiary.default.hex_stripped}}
fish_color_option {{colors.secondary_fixed_dim.default.hex_stripped | set_lightness: -5.0}}

fish_color_search_match bryellow '--background=brblack'
fish_color_selection '{{colors.secondary_container.default.hex_stripped}}' --bold '--background=brblack'
fish_color_status red
fish_color_user brgreen
fish_color_valid_path --underline


fish_pager_color_background
fish_pager_color_completion normal
fish_pager_color_description B3A06D yellow
fish_pager_color_prefix normal --bold --underline
fish_pager_color_progress brwhite '--background=cyan'
fish_pager_color_secondary_background
fish_pager_color_secondary_completion
fish_pager_color_secondary_description
fish_pager_color_secondary_prefix
fish_pager_color_selected_background --background=brblack
fish_pager_color_selected_completion
fish_pager_color_selected_description
fish_pager_color_selected_prefix
