cask "claudebot" do
  version "1.1.8"

  on_arm do
    sha256 "206e812edecb9696d2d7fdf63375cbfefecded4fa5526677d9f049947c7f3149"

    url "https://github.com/Philo-Li/claudebot/releases/download/v#{version}/ClaudeBot-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "4ad7510eb14cf3ca8b6614d3362d9f8047001cd768a0ed6cc9dd121744a16a10"

    url "https://github.com/Philo-Li/claudebot/releases/download/v#{version}/ClaudeBot-#{version}.dmg"
  end

  name "ClaudeBot"
  desc "Use claude code anywhere"
  homepage "https://github.com/Philo-Li/claudebot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ClaudeBot.app"

  zap trash: [
    "~/Library/Application Support/ClaudeBot",
    "~/Library/Caches/ClaudeBot",
    "~/Library/Preferences/com.claudebot.app.plist",
    "~/Library/Saved Application State/com.claudebot.app.savedState",
  ]
end
