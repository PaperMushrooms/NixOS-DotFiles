{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
      kitty
      dunst
      discord
      gimp
      ungoogled-chromium
      telegram-desktop
      neofetch
      htop
      payload-dumper-go
      starship
      powerline
      powerline-fonts
      terminus_font  	 
	    (wineWowPackages.full.override {
     	  wineRelease = "staging";
     	  mingwSupport = true;
   	  })
   	  winetricks
      qt6.qttools
    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
