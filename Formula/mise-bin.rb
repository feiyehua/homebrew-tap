class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.17/mise-v2026.4.17-macos-arm64"
      sha256 "91bb0fe6d74d983869797a7357dd4df4f722e455e167f0d51ceba6bc9dfdbb9b"

      def install
        bin.install "mise-v2026.4.17-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.17/mise-v2026.4.17-macos-x64"
      sha256 "e5ef15fd0e37c7f1ab834b4da258f78277ea87c184ba7538d738c949627c5b9f"

      def install
        bin.install "mise-v2026.4.17-macos-x64" => "mise"
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
