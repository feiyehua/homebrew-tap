class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.25/mise-v2026.4.25-macos-arm64"
      sha256 "a8297c4d57b379a9cd77fc4103d32aacc8e3ad9f01879ee91788f0808f822abf"

      def install
        bin.install "mise-v2026.4.25-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.25/mise-v2026.4.25-macos-x64"
      sha256 "1d20a9fce8aadc527925736d013908fd0d88edfe7ad6a69b1f62a45c93a79b1a"

      def install
        bin.install "mise-v2026.4.25-macos-x64" => "mise"
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
