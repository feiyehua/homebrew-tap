class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.3.0/mise-v2026.3.0-macos-arm64"
      sha256 "6c3567d5ada4d22dd7cd0cf868325e7991e3789bf5e05aff0a2a0bd2aef37b83"

      def install
        bin.install "mise-v2026.3.0-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.3.0/mise-v2026.3.0-macos-x64"
      sha256 "43b72aa76015ee94c68a345ab7953ab43a0439d2194c5c8d47e501c3c7f9f5ca"

      def install
        bin.install "mise-v2026.3.0-macos-x64" => "mise"
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
