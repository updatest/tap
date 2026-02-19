cask "updatest" do
  version "2.2.1,8789"
  sha256 "b23dbb4917ca67295844c2f61adfcecf682fa409821601318f45d2ccd3f2dd91"

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
