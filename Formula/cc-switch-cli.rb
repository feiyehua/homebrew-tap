class CcSwitchCli < Formula
  desc "A cross-platform CLI All-in-One assistant tool for Claude Code, Codex & Gemini CLI"
  homepage "https://github.com/SaladDay/cc-switch-cli"
  version "5.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.3.4/cc-switch-cli-darwin-arm64.tar.gz"
      sha256 "4872ee3b0a4b7aa8b75efda3b81af6b45c5c95bf4d1d802413f054a53c70afcf"

      def install
        bin.install "cc-switch-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/SaladDay/cc-switch-cli/releases/download/v5.3.4/cc-switch-cli-darwin-x64.tar.gz"
      sha256 "9c5118763fc2992da4846a2dd2b4e4d13644d438eef888ba6731a9f8909f1b07"

      def install
        bin.install "cc-switch-cli"
      end
    end
  end

  def post_install
    # Remove quarantine attribute from the binary
    chmod "+x", bin/"cc-switch-cli"
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
    system "#{bin}/cc-switch-cli", "--version"
  end
end