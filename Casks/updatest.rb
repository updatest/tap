cask "updatest" do
  version "1.3.3,6575"
  sha256 "cc266b8309b6156da8dcaea71c8d43755b1e8e75e157d5821f21d87dcc30e1ce"

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
