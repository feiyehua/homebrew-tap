cask "shichizip" do
  version "0.0.3"

  on_arm do
    sha256 "8dc77d06b4eb6c7b08c0f3ac643f37b33c9ba1600aa23aba803313242ca53a03"
    url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZip-Release-arm64.zip"
  end

  on_intel do
    sha256 "3bab2d7e28e124851bed0ff810e260ba61c2109d0f71b0a2e4811085f2cd0501"
    url "https://github.com/idawnlight/ShichiZip/releases/download/v#{version}/ShichiZip-Release-x86_64.zip"
  end

  name "ShichiZip"
  desc "The 7-Zip derivative intended for macOS"
  homepage "https://github.com/idawnlight/ShichiZip"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ShichiZip.app"

  # 清除 quarantine 属性，解决 macOS "已损坏" 问题
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ShichiZip.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/ShichiZip",
    "~/Library/Caches/ShichiZip",
    "~/Library/Preferences/com.idawnlight.ShichiZip.plist",
    "~/Library/Saved Application State/com.idawnlight.ShichiZip.savedState",
  ]
end