{
  description = "My home system flake c: ";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, plasma-manager, hyprland, ... }@inputs: {
    
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = { inherit inputs; };

        modules = [
          ./Config/configuration.nix
          ./Modules/System/default.nix
	  {

	    # Enable Grub Bootloader Configuration
	    grubconf.enable = true;

	    # Enable Audio
	    audio.enable = true;
	    
	    # Enable SSH Configuration
	    ssh.enable = true;

	    # Enable Android Development Environment
	    androidenv.enable = true;

	    # Enable Virtualisation Compatibility
	    virtualisationconf.enable = true;

	    # Enable Gaming Configuration and Tools
	    gaming.enable = true;

	    # Enable Gnome System-Level Configuration
	    gnomesys.enable = true;

	    # Enable LibreOffice Toolbox
	    libreoffice.enable = true;

	    # Enable Hyprland Configuration
	    hyprconf.enable = true;

	    # Enable Plasma6 System-Level Configuration
	    plasmasys.enable = true;
	  }

	  home-manager.nixosModules.home-manager # Home-Manager Module
	  
          {
            home-manager = {
              useUserPackages = true;
              sharedModules = [ plasma-manager.homeManagerModules.plasma-manager ];
              extraSpecialArgs = { inherit inputs; };
              users = {
                nixon = import ./Config/home.nix;
              };
            };
          }
        ];
      };

      recovery = nixpkgs.lib.nixosSystem {
      	specialArgs = { inherit inputs; };
	modules = [
	  ./recovery/configuration.nix
	];
      };
    };
  };
}
