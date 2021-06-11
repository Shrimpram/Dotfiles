{ pkgs, ... }:

{
  home.packages = [
    pkgs.bat
    pkgs.exa
    pkgs.fzf
    pkgs.git-crypt
    pkgs.gnupg
    pkgs.gnused
    pkgs.htop
    pkgs.lazygit
    pkgs.neofetch
    pkgs.nnn
    pkgs.stow
    pkgs.wget
    pkgs.zoxide
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}
