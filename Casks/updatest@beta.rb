cask "updatest@beta" do
  version "1.0.0.BETA,5201"
  sha256 "06d9b33fcc9afac2d098702f35552f05f0157ff4ba39a8738f5058ad821449a6"

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
