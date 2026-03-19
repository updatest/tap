cask "updatest" do
  version "2.4.1,9639"
  sha256 "8246cced87790f1aa408621faaaa4ef417304d00274b3e759cc5329c03c5cf3e"

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
