cask "updatest" do
  version "2.0.0,7963"
  sha256 "4a4f6a614e4e9ffd77fd145aef080201a36d06f3e3fb732d38cb2c900487f72e"

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
