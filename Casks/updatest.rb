cask "updatest" do
  version "1.5.1,7201"
  sha256 "b6d39c355f7fc261750304dcfa66430ecfa62cfd6871ef4d8bb8e52c14f72b53"

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
