{ services, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    desktopManager = {
      xterm.enable = false;
    };
   
    displayManager = {
      lightdm.enable = true; 
    };
  };
}
