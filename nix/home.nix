{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    buku
    exa
    fd
    fzf
    gdu
    git-crypt
    git-lfs
    gnupg
    gnused
    haste-client
    htop
    hyperfine
    lazygit
    neofetch
    nnn
    pandoc
    ripgrep
    shellcheck
    tree
    stow
    vim
    vscode
    wget
    zoxide

    hugo

    lua53Packages.luacheck
    vim-vint
    nodePackages.write-good
    proselint
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
