{ ... }:

{
  services.udev.extraRules = builtins.readFile "/etc/nixos/seat.rules";

}

