{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ pkgs.vim
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  # services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Create /etc/bashrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  # default shell on catalina
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    enableScriptingAddition = false;
    config = {
        window_placement             = "first_child";

        window_border                = "off";
        window_border_placement      = "inset";
        window_border_width          = 2;
        window_border_radius         = 3;
        active_window_border_topmost = "off";
        window_topmost               = "on";

        window_shadow                = "off";
        active_window_border_color   = "0xff5c7e81";
        normal_window_border_color   = "0xff505050";
        insert_window_border_color   = "0xffd75f5f";
        active_window_opacity        = "1.0";
        normal_window_opacity        = "1.0";

        split_ratio                  = "0.50";
        auto_balance                 = "on";

        mouse_modifier               = "fn";
        mouse_action1                = "move";
        mouse_action2                = "resize";

        layout                       = "bsp";

        top_padding                  = 10;
        bottom_padding               = 10;
        left_padding                 = 10;
        right_padding                = 10;
        window_gap                   = 10;
    };

    extraConfig = ''
        # rules
        yabai -m rule --add app='System Preferences' manage=off
        yabai -m rule --add app='Spotify' manage=off

        # Any other arbitrary config here
      '';
    };
}
