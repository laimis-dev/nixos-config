{ lib, ... }:

let
  isMultiseatEnabled = true;
in
{
  services.udev = lib.optionalAttrs isMultiseatEnabled {
    extraRules = builtins.readFile "/etc/nixos/seat.rules";
  };
}

