{ services, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    desktopManager = {
# xfce
#       xterm.enable = false;
#       xfce.enable = true;
#       defaultSession = "xfce";   
        plasma5.enable = true;
    };

    displayManager = {
       sddm.enable = true; 
    };
  };
}
