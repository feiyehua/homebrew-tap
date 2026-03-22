class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.3.10/mise-v2026.3.10-macos-arm64"
      sha256 "c7a0eb1035de974b42d36b69c4b55b836c06b455b990dd6ac530aaf05d4a8a17"

      def install
        bin.install "mise-v2026.3.10-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.3.10/mise-v2026.3.10-macos-x64"
      sha256 "a945255eb432b900d9db1eaccba14e5ef99c719a5d0ad1a983abc00b2f17388f"

      def install
        bin.install "mise-v2026.3.10-macos-x64" => "mise"
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
