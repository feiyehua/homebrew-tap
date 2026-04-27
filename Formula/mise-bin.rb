class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.24/mise-v2026.4.24-macos-arm64"
      sha256 "eb87df7d5fa2772e98e17b75be0d2b9a7fefccd8647ec0990909cc1e35a33f34"

      def install
        bin.install "mise-v2026.4.24-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.24/mise-v2026.4.24-macos-x64"
      sha256 "c30bac3f07664acb71eb661b3cb43f71fc4cde9a40edfce6ed2581cd19838e32"

      def install
        bin.install "mise-v2026.4.24-macos-x64" => "mise"
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
