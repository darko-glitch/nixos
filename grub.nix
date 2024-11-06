{ config, pkgs, ... }:
{
# Use grub
	boot.loader = {
		grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
			gfxmodeEfi = "text";
			gfxmodeBios = "text";
		};
		efi.canTouchEfiVariables = true;
	};
}