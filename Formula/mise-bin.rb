class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.19/mise-v2026.4.19-macos-arm64"
      sha256 "87ce4f73f9e0cc0f5b040903cfa771a8cc46a6e554d0bfdbbea373000144b762"

      def install
        bin.install "mise-v2026.4.19-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.19/mise-v2026.4.19-macos-x64"
      sha256 "b2c54dfa94ee6dbe36f18f53b1bb93ad5787f4f4cac546fb832daf736f05edac"

      def install
        bin.install "mise-v2026.4.19-macos-x64" => "mise"
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
