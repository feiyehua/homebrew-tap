class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.18/mise-v2026.4.18-macos-arm64"
      sha256 "2aea25721f57ec9f3fe04ea8d634a80b3d82d7e5c0e0acf4b3c63a3062b146f6"

      def install
        bin.install "mise-v2026.4.18-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.18/mise-v2026.4.18-macos-x64"
      sha256 "9b1b31514a39eb3ed763404228c80bd344ac58244bb9f49c87225219b52fcad8"

      def install
        bin.install "mise-v2026.4.18-macos-x64" => "mise"
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
