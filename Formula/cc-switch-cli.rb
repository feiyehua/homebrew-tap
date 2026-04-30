class CcSwitchCli < Formula
  desc "A cross-platform CLI All-in-One assistant tool for Claude Code, Codex & Gemini CLI"
  homepage "https://github.com/SaladDay/cc-switch-cli"
  version "5.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.4.0/cc-switch-cli-darwin-arm64.tar.gz"
      sha256 "40087292b845797e54a58423f898422b804f8fb75c77233e44091c39476c7561"
    end
    if Hardware::CPU.intel?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.4.0/cc-switch-cli-darwin-x64.tar.gz"
      sha256 "31ae4f2b65127ad43f367790848e63373c0aaad58b9335d1b56f63945942fc3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.4.0/cc-switch-cli-v5.4.0-linux-arm64-musl.tar.gz"
      sha256 "0f2cc06830f22a6197335127486834f34ccb8ab77607db3bb7393ff8cafb23e5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.4.0/cc-switch-cli-v5.4.0-linux-x64-musl.tar.gz"
      sha256 "bcf5ec55fa0262fab0e404c16d6202a1465eeed5b56935a3cc391d4dba70c9be"
    end
  end

  def install
    bin.install "cc-switch"
  end

  def post_install
    chmod "+x", bin/"cc-switch"
    on_macos do
      system_command "/usr/bin/xattr",
                     args: ["-cr", bin/"cc-switch"],
                     sudo: false
    end
  end

  def caveats
    <<~EOS
      cc-switch-cli has been installed!

      To get started, run:
        cc-switch --help

      Learn more at: https://github.com/SaladDay/cc-switch-cli
    EOS
  end

  test do
    system "#{bin}/cc-switch", "--version"
  end
end
