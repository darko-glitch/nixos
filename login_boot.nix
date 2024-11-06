{ config, pkgs, ... }:
{  # Bootloader.
  services.xserver = {
  displayManager = {
    sddm = {
      enable = true;
      settings = {
        Theme = {
          CursorTheme = "macOS-Monterey";
        };
      };
    };
  }
}