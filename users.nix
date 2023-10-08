{ pkgs, ... }:

{
  users.users.l = {
    isNormalUser = true;
    description = "l";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      kate
      steam
      discord
      lshw
      ntfs3g
      mangohud
      goverlay
      gh
      git
      lazygit
      neovim
      ncdu # folder disk space usage
    ];
  };

  users.users.subsystem = {
    isNormalUser = true;
    description = "subsystem";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      steam
      ntfs3g
    ];
  };
}
