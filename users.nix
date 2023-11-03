{ pkgs, services, ... }:

{
  services.flatpak.enable = true; 
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
      vlc
      pavucontrol
      qbittorrent
      isoimagewriter
      spotify
      nodejs
      wine
      wine64
      winetricks
      lutris
      gamemode
      steamPackages.steamcmd
      # dayz
      geoip
      whois
      #--
      docker
      nerdfonts
      ripgrep
      xclip 
      neofetch
      vscodium
      gnused
      gnugrep
      sqlite
      xdg-utils
      coreutils
      findutils
      steamtinkerlaunch
      ryujinx
      # yuzu-mainline
      yuzu-early-access
      unrar
      hplip
      wget
      gnupg1orig
      apparmor-utils
      gparted
      btop
      pciutils
      virtmanager
      via
    ];
  };

  virtualisation.libvirtd = {
    enable = true;
    qemuOvmf = true;
    qemuRunAsRoot = false;
    onBoot = "ignore";
    onShutdown = "shutdown";
  };

  nixpkgs.overlays = [
    (self: super: {
      proton-ge = self.callPackage ./games/proton-ge.nix {};
    })
  ];

  system.activationScripts.proton-ge.text = ''
    mkdir -p /home/l/.steam/root/compatibilitytools.d/
    ln -sf ${pkgs.proton-ge}/share/proton-ge /home/l/.steam/root/compatibilitytools.d/GE-Proton8-16
  ''; 

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
