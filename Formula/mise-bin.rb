class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.20/mise-v2026.4.20-macos-arm64"
      sha256 "1a26e45cc2fd5e0b39fa795cf6efefad95a051e66b3c59165ae4e15e79628ac2"

      def install
        bin.install "mise-v2026.4.20-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.20/mise-v2026.4.20-macos-x64"
      sha256 "3918a86a0fab75f4aa05c0961fb48fee7b16054f850dba3afe849ae083610e4b"

      def install
        bin.install "mise-v2026.4.20-macos-x64" => "mise"
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
