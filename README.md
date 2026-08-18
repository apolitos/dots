# 🚀 Dotfiles - Hyprland & Fedora Setup

---

## 💻 Recursos e Configurações Incluídos

* **Window Manager / Shell:** Hyprland + Fish Shell + Bash (`.bashrc`)
* **Terminal:** Kitty
* **Editor de Texto:** Neovim (`nvim`)
* **Visualizador de Áudio:** Cava
* **Papéis de Parede:** Noctalia Wallpaper Manager (`noctalia-wallpaper`)
* **Utilitários & Scripts:** Scripts customizados em `~/bin` e `portal_fix.sh` no Hyprland
* **Gerenciador de Pacotes:** Automação de instalação para DNF e Flatpak

---

## 🛠️ Como Restaurar em um Sistema do Zero (1-Command Install)

Para formatar e restaurar **todas as configurações, papéis de parede e aplicativos** em uma instalação limpa do Fedora com um único comando, abra o terminal e rode:

```bash
git clone https://github.com/apolitos/dots.git ~/FDH && cd ~/FDH && chmod +x install.sh && ./install.sh
```

---

## 📦 Como Atualizar o Backup

Se fizer alterações nas suas configurações ou instalar novos programas, execute os passos abaixo na pasta `~/FDH` para atualizar seu repositório:

### 1. Atualizar Listas de Programas
```fish
cd ~/FDH

# Atualizar lista de pacotes DNF
dnf repoquery --userinstalled --queryformat '%{name}' > dnf_packages.txt

# Atualizar lista de pacotes Flatpak
flatpak list --app --columns=application > flatpak_packages.txt
```

### 2. Sincronizar Arquivos e Enviar ao GitHub
```fish
# Copiar configs atualizadas
cp -r ~/.config/hypr .
cp -r ~/.config/kitty .
cp -r ~/.config/nvim .
cp -r ~/.config/cava .
cp -r ~/.config/noctalia-wallpaper .
cp ~/.bashrc .
cp -r ~/bin .

# Commit e Push
git add .
git commit -m "chore: update dotfiles and package lists"
git push
```

---

## 📂 Estrutura do Repositório

```
dots/
├── bin/                 # Scripts executáveis pessoais
├── cava/                # Configuração do Cava
├── hypr/                # Configuração do Hyprland (com portal_fix.sh)
├── kitty/               # Configuração do terminal Kitty
├── noctalia-wallpaper/  # Coleção de wallpapers
├── nvim/                # Configurações do Neovim
├── .bashrc              # Configurações do bash
├── dnf_packages.txt     # Lista de pacotes nativos Fedora (DNF)
├── flatpak_packages.txt # Lista de aplicativos Flatpak
├── install.sh           # Script de instalação automatizada
└── README.md            # Documentação do repositório
