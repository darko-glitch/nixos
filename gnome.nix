{ config, pkgs, ... }:
{
  # Enable the GNOME Desktop Environment.
  services.xserver.desktopManager.gnome.enable = true;

  # Remove bloatware gnome
  environment.gnome.excludePackages = (with pkgs; [
  gnome-photos
  thunderbird
  gnome-tour
  gnome3.geary
  gnome3.gnome-maps 
  gnome3.gnome-software 
  gnome.gnome-clocks
  gnome-console
  gnome-connections
  gedit # text editor
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-music
    gnome-terminal
    epiphany # web browser
    geary # email reader
    evince # document viewer
    gnome-characters
    totem # video player
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
    gnome-calculator
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-font-viewer
    gnome-screenshot
    gnome-system-monitor
    gnome-contacts
    gnome-weather
    cheese      # photo booth
    eog         # image viewer
    epiphany    # web browser
    evince      # document viewer
    file-roller # archive manager
    geary       # email client
    seahorse    # password manager
    simple-scan # document scanner
    totem       # video player
    yelp        # help viewer
  ]);

}