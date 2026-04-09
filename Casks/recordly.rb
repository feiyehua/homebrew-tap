cask "recordly" do
  version "1.1.20"

  on_arm do
    sha256 "445090160b97cc0555e4d11e71f258b7214d147eca7ece20d42a0a98c53b56b6"

    url "https://github.com/webadderall/Recordly/releases/download/v#{version}/Recordly-arm64.dmg"
  end
  on_intel do
    sha256 "78bcc377b2568ba569cc43a871761d0d9a7361a0fe3e34676edb34965986050c"

    url "https://github.com/webadderall/Recordly/releases/download/v#{version}/Recordly-x64.dmg"
  end

  name "Recordly"
  desc "Create polished screen recordings for free"
  homepage "https://github.com/webadderall/Recordly"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Recordly.app"

  zap trash: [
    "~/Library/Application Support/Recordly",
    "~/Library/Caches/Recordly",
    "~/Library/Preferences/com.webadderall.recordly.plist",
    "~/Library/Saved Application State/com.webadderall.recordly.savedState",
  ]
end
