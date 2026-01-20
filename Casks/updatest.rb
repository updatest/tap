cask "updatest" do
  version "1.3.4,6610"
  sha256 "45c5746319836b3478c0ac51bc072279dfa52dcb818ae13c9db7e0b1bf730126"

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
