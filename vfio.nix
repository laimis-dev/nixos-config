{ ... }:

{

  boot.initrd.availableKernelModules = [ "nvidia" "vfio-pci" ];
  boot.initrd.preDeviceCommands = ''
    DEVS="0000:0b:00.0 0000:0b:00.1"
    for DEV in $DEVS; do
      echo "vfio-pci" > /sys/bus/pci/devices/$DEV/driver_override
    done
    modprobe -i vfio-pci
  '';

  # boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelParams = [ "amd_iommu=on" "pcie_aspm=off" ];
  boot.kernelModules = [ "kvm-amd" ];

}
