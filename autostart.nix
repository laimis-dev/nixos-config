
{ services, pkgs, ... }:

{
  # systemd.user.services.i3-display-config-autostart = {
  #   description = "autostart display configuration with autorandr";
  #   script = ''
  #    polybar
  #   '';
  #   wantedBy = [ "default.target" "graphical-session.target" ];
  # };

  # systemd.user.services.i3-display-config-autostart = {
  #   description = "autostart display configuration with autorandr";
  #   script = ''
  #    autorandr --change
  #    rofi -modes "combi" -show combi
  #    polybar
  #    nitrogen --restore 
  #   '';
  #   wantedBy = [ "default.target" ];
  # };

}
