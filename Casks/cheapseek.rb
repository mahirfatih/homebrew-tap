cask "cheapseek" do
  version "1.0.0"
  sha256 "c072343b76c1832add1797da3d493dfb85e8b23338f1fa66bf80aed13e7a6365"

  url "https://github.com/mahirfatih/cheapseek/releases/download/v#{version}/CheapSeek-#{version}.dmg"
  name "CheapSeek"
  desc "Menu bar app that shows when the DeepSeek API is off-peak"
  homepage "https://github.com/mahirfatih/cheapseek"

  depends_on macos: ">= :sonoma"

  app "CheapSeek.app"

  caveats <<~EOS
    CheapSeek is not notarized yet. On first launch, right-click the app and
    choose Open, or run:
      xattr -dr com.apple.quarantine /Applications/CheapSeek.app
  EOS

  zap trash: [
    "~/Library/Preferences/com.labrus.CheapSeek.plist",
    "~/Library/Saved Application State/com.labrus.CheapSeek.savedState",
  ]
end
