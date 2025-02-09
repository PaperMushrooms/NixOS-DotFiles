{
  # Enable and Configure Git
  programs.git = {
    enable = true;
    userName = "PaperMushrooms";
    userEmail = "dreems2reality@gmail.com";

    # Set Default Branch as main
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}