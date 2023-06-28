echo
echo "INSTALLING TOOLS"
echo

PKGS=(
	# Fonts
	'noto-fonts'
	'noto-fonts-cjk'
	'noto-fonts-emoji'
	'ttf-jetbrains-mono-nerd'

	# Terminal
        'bat'
        'exa'
        'man-db'
        'ranger'
	'ripgrep'
	'rtorrent'
	'starship'
	'stow'
	'zip'
	'unzip'
	'zsh'

	# Usability
	'dunst'
	'libnotify'
	'rofi'
        'alacritty'

	# Multimedia
        'feh'
	'mpv'
	'zathura'
	'zathura-pdf-mupdf'

	# Network
	'firefox'
	'networkmanager'
	'openssh'

	# Coding
	'git'
	'lazygit'
	'neovim'
	'docker'
	'docker-compose'

	# Tooling
	'godot'
	'obsidian'
	'kubectl'
	'terraform'
	'aws-cli'

	# Languages
	'jdk-openjdk'	# Java
	'maven'		# Java - Maven
	'go'		# Golang
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
