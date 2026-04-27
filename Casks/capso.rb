cask "capso" do
  version "0.6.0"
  sha256 "8d38793d072063df5504fe474a32f8c41ddffb7ae444ffefce61ecf0595ee138"

  url "https://github.com/lzhgus/Capso/releases/download/v#{version}/Capso-#{version}.dmg"
  name "Capso"
  desc "Open-source screenshot and screen recording tool"
  homepage "https://github.com/lzhgus/Capso"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Capso.app"

  zap trash: "~/Library/Preferences/com.awesomemacapps.capso.plist"
end
