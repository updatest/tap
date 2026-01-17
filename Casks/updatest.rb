cask "updatest" do
  version "1.3.1,6483"
  sha256 "040206ce31aa42ffd2d972fcc107589563b16bf90e9e42c7082a99bdeaebe4a3"

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
end
