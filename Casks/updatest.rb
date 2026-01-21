cask "updatest" do
  version "1.3.5,6626"
  sha256 "c4e2b9c722ce6334431f84cd620f2ab54768c4f3d8cbf2d1a797cbede8eaf6b9"

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
