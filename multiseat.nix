let
  isMultiSeatEnabled = true;  # or false depending on your need
in
{
  services.udev.extraRules =
    if isMultiSeatEnabled then ''
      SUBSYSTEM=="drm", KERNEL=="card0", TAG+="seat", ENV{ID_SEAT}="seat1"
      SUBSYSTEM=="sound", KERNEL=="card0", TAG+="seat", ENV{ID_SEAT}="seat1"
      SUBSYSTEM=="usb", KERNEL=="usb1", TAG+="seat", ENV{ID_SEAT}="seat1"
      SUBSYSTEM=="usb", KERNEL=="usb2", TAG+="seat", ENV{ID_SEAT}="seat1"
    '' else "";
}
