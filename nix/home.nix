{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    exa
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
