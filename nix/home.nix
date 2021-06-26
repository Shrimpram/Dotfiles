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

    nodejs
    nodePackages.npm

    hugo
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
