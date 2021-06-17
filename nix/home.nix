{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    buku
    exa
    fd
    fzf
    git-crypt
    git-lfs
    gnupg
    gnused
    htop
    lazygit
    neofetch
    nnn
    stow
    vim
    vscode
    wget
    zoxide
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
