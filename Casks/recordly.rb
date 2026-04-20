cask "recordly" do
  version "1.1.24"

  on_arm do
    sha256 "6cd5939efa947379db51de928bd1b204555389e4e88e38240b4fe7b999e3b3bd"

    url "https://github.com/webadderall/Recordly/releases/download/v#{version}/Recordly-arm64.dmg"
  end
  on_intel do
    sha256 "42050d25d00c92d1bad13f6c43d9d66e641bc3e85bb0595429618ec7eb8cbd90"

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
