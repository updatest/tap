cask "updatest" do
  version "2.1.1,8306"
  sha256 "6c8ea0929811a2ba32c8f68f01edbda86b2145257ffee819d76e45ed23289b2b"

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
