{ services, pkgs, ... }:

{
  # xfce
  # xdg.portal.enable = true;
  # xdg.portal.extraPortals = with pkgs; [
  #   xdg-desktop-portal-gtk
  # ];

  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    desktopManager = {
     xterm.enable = false;
    # xfce = {
    #   enable = true;
    #   noDesktop = true;
    #   enableXfwm = false;
    # };
     # plasma5 = {
     #    enable = true;
     # };
     lxqt = {
        enable = true;
     };
    };

    windowManager = {
       i3 = {
          enable = true;
          configFile = /etc/nixos/i3-config;
         #  extraPackages = with pkgs; [
         #    dmenu 
         #    i3status
         #    i3lock
         #    i3blocks #if you are planning on using i3blocks over i3status
         # ];
       };
    };
    

    displayManager = {
       # sddm.enable = true; 
      lightdm.enable = true; 
    };
  };
}
