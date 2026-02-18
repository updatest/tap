cask "updatest" do
  version "2.2.0,8784"
  sha256 "8652a93027e3676e71ab807e4749146fe8f8c5e999bcf07906ad4d3af4352281"

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
