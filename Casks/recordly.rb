cask "recordly" do
  version "1.1.23"

  on_arm do
    sha256 "d4e44d8512ba93d6bb4aeac34835f8609b5e30ce33524f18334848d5cbe255c9"

    url "https://github.com/webadderall/Recordly/releases/download/v#{version}/Recordly-arm64.dmg"
  end
  on_intel do
    sha256 "f8934931563b155b55325c7a31a2ff44c007bc3d49c04a945c86a529b7046b7f"

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
