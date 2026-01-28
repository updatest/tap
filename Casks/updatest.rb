cask "updatest" do
  version "1.5.2,7240"
  sha256 "5b62668f080ec6ccf5fd5f218f8efd46d4502338dea6a8676a6ce6af86df77e6"

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
