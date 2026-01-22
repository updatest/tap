cask "updatest" do
  version "1.4.0,6883"
  sha256 "c313b13f97257b4943296f7544fc068b5ec8118a815937ed41e79bc5ad00588c"

  url "https://updatest.app/download/Updatest.zip"
  name "Updatest"
  desc "All in one app update tool for macOS including Homebrew cask management"
  homepage "https://updatest.app"

  livecheck do
    url "https://updatest.app/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Updatest.app"
end
