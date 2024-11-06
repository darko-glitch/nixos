{ config, pkgs, ... }:

{  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Add an editor
    wget
    firefox
    git
    vscodium
    steam
    neofetch
    libreoffice-fresh
    conda
    pkgs.gnome.gnome-terminal
    zsh
    oh-my-zsh
  ];
}
