cask "updatest" do
  version "2.4.2,9727"
  sha256 "23affa55b3adff8811ab5a37a3865cdac43ae2d97746ac339acce1ad328094f6"

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
