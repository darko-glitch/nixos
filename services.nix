{ config, pkgs, ... }:

{
  hardware = {
    bluetooth.enable = true;
  };
  # Enable flatpak.
  services.flatpak.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Audio and sound configuration
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
    # Uncomment the following line if you want to use JACK applications
    jack.enable = true;

    # Enable media-session if you want to use the example session manager
    # media-session.enable = true;
  };
  
  # Enable apparmor
    security.apparmor.enable = true;
    security.audit.enable = true;

  # Gnome keyring
    services.gnome.gnome-keyring.enable = true;
    programs.seahorse.enable = true;

  # power-profiles
    services.power-profiles-daemon.enable = true;

}
