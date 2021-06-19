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
    stow
    vim
    vscode
    wget
    zoxide

    nodejs
    nodePackages.npm
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
