{ services, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    desktopManager = {
      xterm.enable = false;
      gnome.enable = true;
      # kde.enable = true;
      xfce = {
        enable = true;
        noDesktop = true;
        enableXfwm = false;
      };
    };
   
    displayManager = {
      lightdm.enable = true; 
      # gdm.enable = true;
      sessionCommands = ''
        /etc/check-and-run-xfwm4.sh
      '';
    };
  };
}
