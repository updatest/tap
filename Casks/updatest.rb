cask "updatest" do
  version "1.3.1,6550"
  sha256 "16f69e75440674d121bc4f529ee481ae1acd2b5853bf4c02ec41c58f6a487e86"

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
