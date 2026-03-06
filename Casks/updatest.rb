cask "updatest" do
  version "2.3.0,9135"
  sha256 "7272bb2460ef3eef60853995eab428d0fef6043696da800ded3e791e614d202a"

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
