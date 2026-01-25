cask "updatest" do
  version "1.5.0,7080"
  sha256 "71f7c61b3e24c3c819a0affcfcaf01549fdacd334b4f6e2f263a70d482adae4b"

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
