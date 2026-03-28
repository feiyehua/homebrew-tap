cask "macoptimizer" do
  version "4.0.6"

  on_arm do
    sha256 "e915ef32f8f87114038c8ea6757906fd80ed3afc338fd5dacab97f45c53f6eb8"

    url "https://github.com/ddlmanus/MacOptimizer/releases/download/v#{version}/Mac._v#{version}_AppleSilicon.dmg"
  end
  on_intel do
    sha256 "fd153c4e20021118704be38a4109940ad8c49b72d8a436d99adfb662fc6bb991"

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
