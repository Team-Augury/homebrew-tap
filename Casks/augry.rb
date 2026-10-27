cask "augry" do
  version "0.6.5"
  sha256 "36a0314ebc443f030f5ee25706c608da8febb29fd9b69ef613125d603ca93d7f"

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
