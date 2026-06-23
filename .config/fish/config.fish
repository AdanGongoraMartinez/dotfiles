if status is-interactive
    set -g fish_greeting ""

    # Modo vi para navegación normal/insertar
    fish_vi_key_bindings

    # Neovim as editor
    set -gx EDITOR nvim

    # rust
    set -Ua fish_user_paths $HOME/.cargo/bin

    # Chrome
    set -x CHROME_EXECUTABLE /var/lib/flatpak/exports/bin/com.google.Chrome

    # flutter
    set -gx PATH $HOME/flutter/bin $PATH

    # LazyDocker
    set -gx PATH $HOME/go/bin/ $PATH

    # Posting
    set -gx PATH $HOME/.local/bin $PATH

    # Bat
    set -x BAT_THEME "Catppuccin Mocha"

    # Inicializar zoxide si está instalado
    if type -q zoxide
        zoxide init fish | source
    end

    set fzf_fd_opts --hidden --max-depth 5

    abbr --add cl clear
    # Para mostrar iconos y una lista larga con detalles
    abbr --add ls 'eza -lh --icons'
    # Para mostrar iconos, una lista larga y agrupar directorios primero
    abbr --add ll 'eza -lh --icons --group-directories-first'
    # Para una vista de árbol con iconos
    abbr --add tree 'eza --tree --level=2 --icons --git'
    # fuzzy find with bat preview
    abbr --add ff "fzf --ansi --preview-window 'right:60%' --preview 'bat --color=always --style=numbers,changes --line-range :500 {}'"

    # tmux
    abbr --add tn 'tmux new-session -s'
    abbr --add tl 'tmux list-sessions'
    abbr --add ta 'tmux attach-session'

    # Andriod studio
    abbr --add a-studio '~/android-studio/bin/studio'

    # update
    function updateall
        sudo dnf upgrade --refresh; and flatpak update -y
    end
    function cleanup
        sudo dnf autoremove; and flatpak uninstall --unused -y
    end

    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end

    # Tmuxifier
    set -gx PATH $HOME/.tmuxifier/bin $PATH
    eval (tmuxifier init - fish)

    #Starship
    starship init fish | source
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
