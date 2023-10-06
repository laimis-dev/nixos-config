{ lib, ... }:

let
  isMultiseatEnabled = false;
in

{
  services.udev = lib.optionalAttrs isMultiseatEnabled {
    extraRules = builtins.readFile "/etc/nixos/seat.rules";
  };
  services.xserver.videoDrivers = ["nvidia"] ++ lib.optional isMultiseatEnabled "amdgpu";
}

