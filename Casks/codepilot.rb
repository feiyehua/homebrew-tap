cask "codepilot" do
  version "0.32.1"

  on_arm do
    sha256 "05de31860582ba052b9182f37d1b445822297fdda02f994d9bdc6a9b5e1a46eb"

    url "https://github.com/op7418/CodePilot/releases/download/v#{version}/CodePilot-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "d2ba52798203b380eeb2adb78bdd6cb8a2e380756c0ff0aac66169830daec1ad"

    url "https://github.com/op7418/CodePilot/releases/download/v#{version}/CodePilot-#{version}-x64.dmg"
  end

  name "CodePilot"
  desc "A native desktop GUI for Claude Code"
  homepage "https://github.com/op7418/CodePilot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CodePilot.app"

  zap trash: [
    "~/Library/Application Support/CodePilot",
    "~/Library/Caches/CodePilot",
    "~/Library/Preferences/com.codepilot.app.plist",
    "~/Library/Saved Application State/com.codepilot.app.savedState",
  ]
end
