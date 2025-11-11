cask "updatest@beta" do
  version "1.0.0.BETA,2266"
  sha256 "464fa0b04210f269cee1d2f10e5bbbb4f6b4b49812ee8cfaf10b0145a8b8b345"

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
