class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.11/mise-v2026.4.11-macos-arm64"
      sha256 "265ffb4990785d2d3c6178ebfa97c2c7d845c091fb3b5940525c06b1d70e281c"

      def install
        bin.install "mise-v2026.4.11-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.11/mise-v2026.4.11-macos-x64"
      sha256 "dc356331acc6aa14d0b6885a20e32f8f9a577791de5cfdecb39a330a6a4e82e6"

      def install
        bin.install "mise-v2026.4.11-macos-x64" => "mise"
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
