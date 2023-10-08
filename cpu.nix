{ services, pkgs, ... }:

{
  services.power-profiles-daemon.enable = true;
#  services.auto-cpufreq.enable = true;
#  services.auto-cpufreq.settings = {
#    charger = {
#      governor = "performance";
#      turbo = "auto";
#    };
#
#    battery = {
#      governor = "powersave";
#      turbo = "auto";
#    };
#  };
  boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelParams = [
    "initcall_blacklist=acpi_cpufreq_init"
  ];
  boot.kernelModules = ["amd-pstate-epp"];
}
