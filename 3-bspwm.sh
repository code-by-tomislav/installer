echo
echo "INSTALLING BSPWM"
echo

PKGS=(
	# Window Manager
        'bspwm'
        'sxhkd'
	# Misc
	'polybar'
	'picom'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
