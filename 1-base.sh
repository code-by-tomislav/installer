echo
echo "INSTALLING BASE"
echo

PKGS=(
	# Xorg
        'xorg-server'
        'xorg-xinit'
	'xorg-xrandr'
	'autorandr'
	'xclip'
	# Sound
	'pipewire'
	'pipewire-alsa'
	'pipewire-jack'
	'pipewire-pulse'
	'wireplumber'
	'pulsemixer'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
