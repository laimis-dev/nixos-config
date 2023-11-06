
{ services, pkgs, ... }:

{
  systemd.user.services.i3-display-config-autostart = {
    description = "autostart display configuration with autorandr";
    script = ''
      autorandr --change
    '';
    wantedBy = [ "default.target" ];
  };
}
