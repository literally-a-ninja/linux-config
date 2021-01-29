function fish_default_mode_prompt --description "Display the default mode for the prompt"
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
            case default
                echo ' '
            case insert
                echo '·'
            case replace_one
                echo '1'
            case replace
                echo '*'
            case visual
                echo '±'
        end
        set_color normal
        echo -n ' '
    end
end

