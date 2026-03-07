class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.3.4/mise-v2026.3.4-macos-arm64"
      sha256 "48c3e1114b721a8e468eb07883b0f624ab9f6f5e7809bfe2fc09ef27dc5b7a79"

      def install
        bin.install "mise-v2026.3.4-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.3.4/mise-v2026.3.4-macos-x64"
      sha256 "4965d0fa3209c779c06b91b6354fa34ec104b3031139aae7d46a5f7f1deeee6b"

      def install
        bin.install "mise-v2026.3.4-macos-x64" => "mise"
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
