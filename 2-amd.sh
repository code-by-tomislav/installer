echo
echo "INSTALLING AMD"
echo

PKGS=(
        'amd-ucode'
        'mesa'
	'mesa-vdpau'
	'libva-mesa-driver'
	'vulkan-radeon'
	'xf86-video-amdgpu'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
