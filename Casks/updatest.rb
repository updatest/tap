cask "updatest" do
  version "2.4.0,9561"
  sha256 "944dd31c3d4c66c76410689c5f499ba86fc2369ba1d0e0684bc4e0b1915859be"

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
