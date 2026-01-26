cask "updatest" do
  version "1.5.0,7095"
  sha256 "9b9db4e86670349e4f739497177d8b323f5d8be0d1a3d6df875f09582cac0b3c"

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
