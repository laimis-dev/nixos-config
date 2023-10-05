{
  fileSystems."/media/gamedisk" =
    { device = "/dev/disk/by-uuid/4AA6B6CDA6B6B931";
      fsType = "ntfs-3g";
      options = [ "gid=1000" "uid=1000" ];
    };

  fileSystems."/media/shared2" =
    { device = "/dev/disk/by-uuid/8096CE6696CE5BF2";
      fsType = "ntfs-3g";
      options = [ "gid=1000" "uid=1000" ];
    };
}
