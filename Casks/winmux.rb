cask "winmux" do
  version "0.1.2"
  sha256 "80a8504fa3d70188177e4826b43ed7b7b3e889ac680b2ed9139a106704b947d0"

  url "https://github.com/ZimengXiong/winmux/releases/download/v#{version}/WinMux-#{version}.zip"
  name "WinMux"
  desc "A intuitive, batteries-included WM for macOS built on Aerospace"
  homepage "https://github.com/ZimengXiong/winmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WinMux.app"

  zap trash: [
    "~/Library/Application Support/WinMux",
    "~/Library/Preferences/com.zimengxiong.winmux.plist",
    "~/Library/Caches/WinMux",
  ]
end