cask "puremac" do
  version "2.1.0"
  sha256 "4a582397b08a90eaded222556e2ade89c17a0ef61cf7ad34058ecec7ec54cae9"

  url "https://github.com/momenbasel/PureMac/releases/download/v#{version}/PureMac-#{version}.zip"
  name "PureMac"
  desc "Free, open-source macOS app manager and system cleaner"
  homepage "https://github.com/momenbasel/PureMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PureMac.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PureMac.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.puremac.app.plist",
    "~/Library/Caches/com.puremac.app",
    "~/Library/LaunchAgents/com.puremac.scheduler.plist",
  ]
end