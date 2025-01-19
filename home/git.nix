{
  # Enable and Configure Git
  programs.git = {
    enable = true;
    userName = "PaperMushrooms";
    userEmail = "dreems2reality@gmail.com";

    # Set Default Branch as main
    extraConfig = {
      init.defaultBranch = "main";
      
      Host github.com;
        User git;
        IdentityFile ~/.ssh/GitHub;
        IdentitiesOnly yes;

      Host gitlab.com;
        User git;
        IdentityFile ~/.ssh/GitHub;
        IdentitiesOnly yes;
    };
  };
}