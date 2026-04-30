class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.27/mise-v2026.4.27-macos-arm64"
      sha256 "ee6db3e13457f1cdb4a83e427b0b9f956a5d340972cb589e75c8c99067b4b971"

      def install
        bin.install "mise-v2026.4.27-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.27/mise-v2026.4.27-macos-x64"
      sha256 "b2e0340cee0b678046f8be5a0802db39e1b1d24b53ff84edb239d2e8dd43b956"

      def install
        bin.install "mise-v2026.4.27-macos-x64" => "mise"
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
