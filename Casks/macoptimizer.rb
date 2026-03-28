cask "macoptimizer" do
  version "4.0.5"

  on_arm do
    sha256 "PLACEHOLDER_SHA256_ARM"

    url "https://github.com/ddlmanus/MacOptimizer/releases/download/v#{version}/Mac._v#{version}_AppleSilicon.dmg"
  end
  on_intel do
    sha256 "PLACEHOLDER_SHA256_INTEL"

    url "https://github.com/ddlmanus/MacOptimizer/releases/download/v#{version}/Mac._v#{version}_Intel.dmg"
  end

  name "MacOptimizer"
  desc "System cleaner and optimizer for macOS"
  homepage "https://github.com/ddlmanus/MacOptimizer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mac优化大师.app", target: "MacOptimizer.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MacOptimizer.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.ddlmanus.macoptimizer",
    "~/Library/Caches/com.ddlmanus.macoptimizer",
    "~/Library/Preferences/com.ddlmanus.macoptimizer.plist",
    "~/Library/Saved Application State/com.ddlmanus.macoptimizer.savedState",
  ]
end
