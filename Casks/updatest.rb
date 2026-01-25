cask "updatest" do
  version "1.5.0,7086"
  sha256 "55fbc2975fee04fa3aa7e0130df488a9a3b5ba58c760ad6007da7754be52ff00"

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
