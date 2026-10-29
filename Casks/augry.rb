cask "augry" do
  version "0.7.0"
  sha256 "f6a901b26dce87f663752ebfddc8d1acc8ce68b349b1cd5259ebd6b337591363"

  url "https://github.com/Team-Augury/Augry/releases/download/v#{version}/Augry_#{version}_universal.dmg",
      verified: "github.com/Team-Augury/Augry/"
  name "Augry"
  desc "Run coding agents side by side, with git, review, notes and processes"
  homepage "https://augry.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Augry.app"

  zap trash: [
    "~/Library/Application Support/dev.augry.app",
    "~/Library/Caches/augry",
    "~/Library/Caches/dev.augry.app",
    "~/Library/Saved Application State/dev.augry.app.savedState",
    "~/Library/WebKit/augry",
    "~/Library/WebKit/dev.augry.app",
  ]
end
