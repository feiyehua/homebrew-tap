class CcSwitchCli < Formula
  desc "A cross-platform CLI All-in-One assistant tool for Claude Code, Codex & Gemini CLI"
  homepage "https://github.com/SaladDay/cc-switch-cli"
  version "5.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.4.0/cc-switch-cli-darwin-arm64.tar.gz"
      sha256 "40087292b845797e54a58423f898422b804f8fb75c77233e44091c39476c7561"

      def install
        bin.install "cc-switch"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.4.0/cc-switch-cli-darwin-x64.tar.gz"
      sha256 "31ae4f2b65127ad43f367790848e63373c0aaad58b9335d1b56f63945942fc3b"

      def install
        bin.install "cc-switch"
      end
    end
  end

  def post_install
    # Remove quarantine attribute from the binary
    chmod "+x", bin/"cc-switch"
    system_command "/usr/bin/xattr",
                   args: ["-cr", bin/"cc-switch-cli"],
                   sudo: false
  end

  def caveats
    <<~EOS
      cc-switch-cli has been installed!

      To get started, run:
        cc-switch-cli --help

      Learn more at: https://github.com/SaladDay/cc-switch-cli
    EOS
  end

  test do
    system "#{bin}/cc-switch", "--version"
  end
end
