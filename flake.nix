{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # nixpkgs.url = "github:NixOS/nixpkgs?ref=master";

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";

    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };

    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

    stylix.url = "github:danth/stylix";

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay.url = "github:oxalica/rust-overlay";

    hyprland.url = "github:hyprwm/Hyprland";
    iio-hyprland.url = "github:JeanSchoeller/iio-hyprland";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nix-darwin, plasma-manager, nvf, hyprland, nix-homebrew, homebrew-core, homebrew-cask, ... }@inputs: {
    nixosConfigurations = {
      satanix = nixpkgs.lib.nixosSystem {
        system = "x86-linux";

        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/satanix/system
          ./modules/nixos/system
          ./modules/shared/system

          home-manager.nixosModules.home-manager
          inputs.stylix.nixosModules.stylix

          {
            home-manager = {
              useUserPackages = true;
              backupFileExtension = "backup";
              sharedModules = [
                plasma-manager.homeModules.plasma-manager
                nvf.homeManagerModules.default
              ];

              extraSpecialArgs = { inherit inputs; };
              users.dex.imports = [
                ./hosts/satanix/home
                ./modules/shared/home
              ];
            };
          }
        ];
      };

      nixspawn = nixpkgs.lib.nixosSystem {
        system = "x86-linux";

        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/nixspawn/system
          ./modules/nixos/system
          ./modules/shared/system

          home-manager.nixosModules.home-manager
          inputs.stylix.nixosModules.stylix

          {
            home-manager = {
              useUserPackages = true;
              backupFileExtension = "backup";
              sharedModules = [
                plasma-manager.homeModules.plasma-manager
                nvf.homeManagerModules.default
              ];

              extraSpecialArgs = { inherit inputs; };
              users.dex.imports = [
                ./hosts/nixspawn/home
                ./modules/shared/home
              ];
            };
          }
        ];
      };

      recovery = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ ./recovery/configuration.nix ];
      };
    };

    darwinConfigurations."darwin" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ./hosts/darwin/system
        ./modules/shared/system

        home-manager.darwinModules.home-manager
        stylix.darwinModules.stylix
        nix-homebrew.darwinModules.nix-homebrew

        {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "matthew";

            taps = {
              "homebrew/homebrew-core" = homebrew-core;
              "homebrew/homebrew-cask" = homebrew-cask;
            };

            mutableTaps = false;
          };

          home-manager = {
            useUserPackages = true;
            sharedModules = [ nvf.homeManagerModules.default ];

            extraSpecialArgs = { inherit inputs; };
            users.matthew.imports = [
              ./hosts/darwin/home
              ./modules/shared/home
            ];
          };
        }
      ];
    };
  };
}
