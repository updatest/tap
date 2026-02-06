cask "updatest" do
  version "2.1.0,8234"
  sha256 "d84da06ead0e8a72d3c419dbf13bd431c89c2aaca91363b51fd0c879f202a969"

  url "https://updatest.app/download/Updatest.zip"
  name "Updatest"
  desc "Your home for Mac updates"
  homepage "https://updatest.app"

  livecheck do
    url "https://updatest.app/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Updatest.app"
end
