cask "updatest@beta" do
  version "1.0.0.BETA,5408"
  sha256 "0e9920baaaaa9993d3e9ec5712f2baad86e047261fb644d987fe14c935f819dc"

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
