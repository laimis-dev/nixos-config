{ services, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    desktopManager = {
# xfce
      # xterm.enable = true;
     # xfce.enable = true;
#       defaultSession = "xfce";   
        plasma5.enable = true;
    };

    windowManager = {
       i3 = {
          enable = true;
          extraPackages = with pkgs; [
            dmenu #application launcher most people use
            i3status # gives you the default i3 status bar
            i3lock #default i3 screen locker
            i3blocks #if you are planning on using i3blocks over i3status
         ];
       };
    };
    

    displayManager = {
       # sddm.enable = true; 
       # ly.enable = true; 
       lightdm.enable = true; 
    };
  };
}
