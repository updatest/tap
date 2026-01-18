cask "updatest" do
  version "1.3.2,6566"
  sha256 "1797adda918d890d19933ab28fd1d506bb808884c1c5c7d070502271c3947582"

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
