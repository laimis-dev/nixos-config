{ services, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    desktopManager = {
      xterm.enable = false;
      lxqt = {
        enable = true;
      };
    };
   
    displayManager = {
       # sddm.enable = true; 
      lightdm.enable = true; 
    };
  };
}
