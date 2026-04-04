class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.3/mise-v2026.4.3-macos-arm64"
      sha256 "d0b8699ab004853f19f903f97d4ed66685f409751ae28389ff06f35b60ac2543"

      def install
        bin.install "mise-v2026.4.3-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.3/mise-v2026.4.3-macos-x64"
      sha256 "80a511766491ccc1461f6f66d2a5885e36051b49d7e61076d3ae5abd228ac3a0"

      def install
        bin.install "mise-v2026.4.3-macos-x64" => "mise"
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
