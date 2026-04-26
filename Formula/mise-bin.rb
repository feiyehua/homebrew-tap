class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.22/mise-v2026.4.22-macos-arm64"
      sha256 "b0646b36130f054a9dcaf6e97a17d83e562c56dbf4d8ca0c7c09cef2065a33bf"

      def install
        bin.install "mise-v2026.4.22-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.22/mise-v2026.4.22-macos-x64"
      sha256 "b634d88e5a9f869fe54926c8fbcfee90d57741d7bc82731b19cb9c0a8741b6a0"

      def install
        bin.install "mise-v2026.4.22-macos-x64" => "mise"
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
