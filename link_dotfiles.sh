
#!/bin/bash

# Caminho do diretório onde estão os dotfiles
DOTFILES_DIR="$HOME/dotfiles"

# Lista dos itens que serão linkados
declare -a FILES=(
    ".config/kitty/kitty-btop.conf"
    ".config/kitty/kitty.conf"
    ".config/niri/config.kdl"
    ".config/systemd/user/swaybg.service"
    ".config/waybar/config.jsonc"
    ".config/waybar/style.css"
    ".swaylock/config"
    ".zshrc"
    ".config/helix/config.toml"
    ".config/helix/languages.toml"
)

echo "=============================="
echo "  🔗 Criando links simbólicos"
echo "=============================="

for FILE in "${FILES[@]}"; do
    TARGET="$HOME/$FILE"
    SOURCE="$DOTFILES_DIR/$FILE"

    # Cria diretório pai se não existir
    mkdir -p "$(dirname "$TARGET")"

    # Remove se já existir (arquivo, link ou pasta)
    if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
        echo "⚠️  Removendo $TARGET"
        rm -rf "$TARGET"
    fi

    # Cria o link
    ln -s "$SOURCE" "$TARGET"
    echo "✅ Link criado: $TARGET -> $SOURCE"
done

echo "=============================="
echo "    ✅ Tudo pronto!"
echo "=============================="
