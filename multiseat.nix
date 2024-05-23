{ lib, ... }:

let
  isMultiseatEnabled = true;
in

{
  services.udev = lib.optionalAttrs isMultiseatEnabled {
    extraRules = builtins.readFile "/etc/nixos/seat.rules";
  };
  services.xserver.videoDrivers = ["nvidia"] ++ lib.optional isMultiseatEnabled "amdgpu";
  # services.xserver.videoDrivers = ["nvidia" "amdgpu"];
  # services.xserver.videoDrivers = ["amdgpu"];
}

