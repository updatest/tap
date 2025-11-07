cask "updatest@beta" do
  version "1.0.0.BETA,1837"
  sha256 "7c3d6b22cf6727ebff5f40e0bcb9a6aef42780e9792a75c7dbb156637515da93"

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
