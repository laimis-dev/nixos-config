{ pkgs, ... }:

{
  environment.etc."check-and-run-xfwm4.sh".source = pkgs.writeText "check-and-run-xfwm4.sh" ''
    #!/usr/bin/env bash

    if [ "$XDG_CURRENT_DESKTOP" = "XFCE" ]; then
      xfwm4 --replace &
    fi
  '';
}
