cask "cheapseek" do
  version "1.0.0"
  sha256 "f38405407b4ae666f6b8e4ff513a110b404d9ba44bd2bf0946b5eb5d6b61109c"

  url "https://github.com/mahirfatih/cheapseek/releases/download/v#{version}/CheapSeek-#{version}.dmg"
  name "CheapSeek"
  desc "Menu bar app that shows when the DeepSeek API is off-peak"
  homepage "https://github.com/mahirfatih/cheapseek"

  depends_on macos: ">= :sonoma"

  app "CheapSeek.app"

  zap trash: [
    "~/Library/Preferences/com.labrus.CheapSeek.plist",
    "~/Library/Saved Application State/com.labrus.CheapSeek.savedState",
  ]
end
