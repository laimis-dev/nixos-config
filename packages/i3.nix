
{ pkgs, ... }:

{
  services.xserver.windowManager = {
      i3 = {
        enable = true;
        configFile = /etc/nixos/packages/i3-config;
        extraPackages = with pkgs; [
          i3lock
          polybar
        ];
     };
  };

  services.picom.enable = true;

  users.users.l.packages = with pkgs; [
    nitrogen
    alacritty
    rofi
    bluetuith
    arandr
    autorandr
    ranger
    cinnamon.nemo
  ];
}
