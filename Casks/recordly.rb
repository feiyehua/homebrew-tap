cask "recordly" do
  version "1.1.21"

  on_arm do
    sha256 "62441e1e87f937108024612299c121862ddcc663203d282a0442b3b27ddb7f37"

    url "https://github.com/webadderall/Recordly/releases/download/v#{version}/Recordly-arm64.dmg"
  end
  on_intel do
    sha256 "e5eb4e179396ef5a95d7ee1ad1f2ef5fa8b5615f60175554f474dbfaeaa60d1f"

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
