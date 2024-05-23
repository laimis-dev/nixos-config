{ services, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    desktopManager = {
      xterm.enable = false;
      gnome.enable = true;
    };
   
    displayManager = {
      lightdm.enable = true;
      # gdm.enable = true; 
    };
  };
}
