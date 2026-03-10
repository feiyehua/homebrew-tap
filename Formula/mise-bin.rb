class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.3.7/mise-v2026.3.7-macos-arm64"
      sha256 "248658143898a7116837662c886b8a4bf539b6e50025e6e95f4f3718ce5495a4"

      def install
        bin.install "mise-v2026.3.7-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.3.7/mise-v2026.3.7-macos-x64"
      sha256 "33d02fc8d281f8b6f40aa4ffa5bc93abed864e6975b455c5e793c8c3e94dad06"

      def install
        bin.install "mise-v2026.3.7-macos-x64" => "mise"
      end
    end
  end

  def caveats
    <<~EOS
      mise has been installed!

      To get started, run:
        mise --version

      For shell integration, add to your shell profile:
        # For Bash
        echo 'eval "$(mise activate bash)"' >> ~/.bashrc

        # For Zsh
        echo 'eval "$(mise activate zsh)"' >> ~/.zshrc

        # For Fish
        echo 'mise activate fish | source' >> ~/.config/fish/config.fish

      Learn more at: https://mise.jdx.dev/
    EOS
  end

  test do
    system "#{bin}/mise", "--version"
  end
end
