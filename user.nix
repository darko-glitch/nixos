{ config, pkgs, ... }:

{
  # User account definition
  users.users.dark = {
    isNormalUser = true;
    initialPassword = "password";  # Replace with a secure password
    extraGroups = [ "wheel" "networkmanager" "video" "audio" "libvirtd" ];  # Enable sudo for the user
    shell = pkgs.zsh;  # Set Zsh as the default shell
    packages = with pkgs; [
            zsh
            oh-my-zsh
            zsh-completions
            zsh-powerlevel10k
            zsh-syntax-highlighting
            zsh-history-substring-search
          ];

  };
  programs.zsh.interactiveShellInit = ''
  export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/

  # Customize your oh-my-zsh options here
  ZSH_THEME="kali-dark"
  plugins=(git sudo zsh-syntax-highlighting zsh-autosuggestions)

  source $ZSH/oh-my-zsh.sh
  '';

  programs.zsh.promptInit = ""; # Clear this to avoid a conflict with oh-my-zsh

  # # Enable Zsh with Oh My Zsh and plugins
  # programs = {
  #   zsh = {
  #     enable = true;
  #     ohMyZsh = {
  #       enable = true;
  #       theme = "agnoster";  # Use a known theme, change if you have 'kali-theme' installed correctly
  #       plugins = [
  #         "sudo"
  #         "terraform"
  #         "systemadmin"
  #         "vi-mode"
  #         "git"
  #         "vscode"
  #         "command-not-found"
  #         "pip"
  #         "python"
  #         "fast-syntax-highlighting"
  #         "zsh-syntax-highlighting"
  #         "zsh-autosuggestions"
  #       ];
  #     };
  #   };
  # };

  # Enable nm-applet for NetworkManager tray
  programs.nm-applet.enable = true;

  # Enable dconf settings
  programs.dconf.enable = true;
}
