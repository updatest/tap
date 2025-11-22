cask "updatest@beta" do
  version "1.0.0.BETA,3259"
  sha256 "9c0dde7d40c590757961914c5bfbba4d1284ddf2dcbf9727b2e06453edeb1177"

  url "https://updatest.app/download/Updatest.zip"
  name "Updatest"
  desc "All in one app update tool for macOS including Homebrew cask management"
  homepage "https://updatest.app"

  livecheck do
    url "https://updatest.app/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Updatest.app"

  zap trash: [
    "~/Library/Application Support/Updatest",
    "~/Library/Caches/app.updatest.Updatest",
    "~/Library/Preferences/app.updatest.Updatest.plist",
    "~/Library/Saved Application State/app.updatest.Updatest.savedState"
  ]
end
