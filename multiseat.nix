{ lib, ... }:

let
  isMultiseatEnabled = true;
in

{
  services.udev = lib.optionalAttrs isMultiseatEnabled {
    extraRules = builtins.readFile "/etc/nixos/seat.rules";
  };

  services.xserver.videoDrivers = if isMultiseatEnabled then ["nvidia" "amdgpu"] else ["nvidia"];
}

