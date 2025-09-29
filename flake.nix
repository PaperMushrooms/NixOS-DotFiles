{

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # nixpkgs.url = "github:NixOS/nixpkgs?ref=master";

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
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

  outputs = { self, nixpkgs, home-manager, nix-darwin, plasma-manager, nvf, hyprland, ... }@inputs: {

    nixosConfigurations = {
      jealousy = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/jealousy/system
          ./hosts/jealousy/system/options.nix
          ./modules/system

          home-manager.nixosModules.home-manager # Home-Manager Module
          inputs.stylix.nixosModules.stylix

          {

            home-manager = {
              useUserPackages = true;
              sharedModules = [
                plasma-manager.homeModules.plasma-manager
                nvf.homeManagerModules.default
              ];

              extraSpecialArgs = { inherit inputs; };
              users = {
                jealousy = import ./hosts/jealousy/home/home.nix;
              };
            };
          }
        ];
      };

      tuffy = nixpkgs.lib.nixosSystem {
        system = "x86-linux";

        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/tuffy/system
          ./hosts/tuffy/system/options.nix
          ./modules/system

          home-manager.nixosModules.home-manager # Home-Manager Module
          inputs.stylix.nixosModules.stylix

          {
            home-manager = {
              useUserPackages = true;
              sharedModules = [
                plasma-manager.homeModules.plasma-manager
                nvf.homeManagerModules.default
              ];

              extraSpecialArgs = { inherit inputs; };
              users = {
                tuffy = import ./hosts/tuffy/home/home.nix;
              };
            };
          }
        ];
      };

      school = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/school/system
          ./hosts/school/system/options.nix
          ./modules/system

          {

            home-manager = {
              useUserPackages = true;
              sharedModules = [
                plasma-manager.homeModules.plasma-manager
                nvf.homeManagerModules.default
              ];

              extraSpecialArgs = { inherit inputs; };
              users = {
                school = import ./hosts/school/home/home.nix;
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

      darwinConfigurations."Darwin" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [

        ];
      };
    };
  };
}

