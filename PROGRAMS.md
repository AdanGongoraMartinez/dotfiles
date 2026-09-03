# Programas

> Base: Fedora · macOS. Formato: `# Linux (Fedora): <pm> · macOS: <pm>`.
> `dnf` = repos oficiales; `COPR` = repos de terceros (habilitar primero). En macOS el gestor default es Homebrew.

## Shell y terminal

fish # dnf · brew
starship # instalador oficial (curl) o COPR `atim/starship` · brew
zoxide # dnf · brew
fzf # dnf · brew
fd # dnf (paquete `fd-find`) · brew
bat # dnf · brew
grc # dnf · brew
tmux # dnf · brew
tmuxifier # git clone (manual) · git clone (manual)

### Plugins de fish (stow)

fishPlugins.grc # Nix (home-manager) o fisher en ambas plataformas
fishPlugins.fzf-fish # Nix (home-manager) o fisher en ambas plataformas
fishPlugins.done # Nix (home-manager) o fisher en ambas plataformas
fishPlugins.forgit # Nix (home-manager) o fisher en ambas plataformas

### Plugins de tmux (según tema)

- `tmuxPlugins.gruvbox` / `tmuxPlugins.catppuccin` / `tmuxPlugins.tokyo-night-tmux` # tpm (tmux plugin manager) en ambas plataformas

## Terminales

ghostty # COPR `danklinux` (ya habilitada) · brew (cask `ghostty`)
kitty # dnf · brew

## Editores y herramientas TUI

helix # dnf · brew
lazygit # COPR `atim/lazygit` · brew
yazi # COPR `lihaohong/yazi` o `cargo install --locked yazi-fm` · brew

## Control de versiones

git # dnf · brew (o Xcode CLT)
gh # dnf · brew
jujutsu # COPR `aldantanneo/jj-vcs` o `cargo install jj-cli` · brew (`jj`)

## Herramientas CLI

opencode # npm (`opencode-ai`) en ambas plataformas
btop # dnf · brew
fastfetch # dnf · brew
cmatrix # dnf · brew

## Lenguajes y toolchains

nodejs # dnf (o nvm) · brew (o nvm)
go # dnf (paquete `golang`) · brew
flutter # SDK oficial (flutter.dev) · SDK oficial o brew (cask `flutter`)
dotnet-sdk # dnf (ej: `dotnet-sdk-10.0`) · brew (cask `dotnet-sdk`)
cargo # rustup en ambas plataformas
rustc # rustup en ambas plataformas
python3 # preinstalado en Fedora · brew (macOS no lo trae por defecto)

## LSPs y formatters

nixd # Nix (nixpkgs) en ambas plataformas
alejandra # Nix (nixpkgs) en ambas plataformas
rust-analyzer # rustup component en ambas plataformas
rustfmt # rustup component en ambas plataformas
gopls # dnf o `go install golang.org/x/tools/gopls@latest` · `go install` o brew
gofumpt # `go install mvdan.cc/gofumpt@latest` en ambas plataformas
typescript-language-server # npm -g en ambas plataformas
prettier # npm -g en ambas plataformas
vscode-langservers-extracted # npm -g en ambas plataformas
ty # binario (GitHub releases) / python installer · brew
ruff # dnf (o `pipx install ruff`) · `pipx install ruff` o brew
taplo # `cargo install taplo-cli` o npm en ambas plataformas
yaml-language-server # npm -g en ambas plataformas
omnisharp-roslyn # binario (GitHub releases de OmniSharp) en ambas plataformas
dockerfile-language-server # npm -g en ambas plataformas
hadolint # dnf (o binario) · brew (o binario)
marksman # binario (GitHub releases) · brew
bash-language-server # npm -g en ambas plataformas
gawk # dnf · brew
postgres-language-server # npm # sin autocompletado y siempre marca error
sqlformat # pip

## Contenedores

docker-compose # dnf · brew (o Docker Desktop)

## Fonts

nerd-fonts.hack # Nix (home-manager) o descarga de nerdfonts.com · brew (cask `font-hack-nerd-font`)
jetbrains-mono-fonts # dnf · brew

## Utilidades Linux (GNOME/Wayland)

wl-clipboard # dnf · no aplica (only Wayland)
openfortivpn # dnf · brew
gnome-disk-utility # dnf · no aplica (GNOME)
gnome-connections # dnf · no aplica (GNOME)
gnome-pomodoro # dnf · no aplica (GNOME)
gcolor3 # dnf · no aplica (GNOME)
