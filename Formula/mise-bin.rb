class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.9/mise-v2026.4.9-macos-arm64"
      sha256 "0f5c3427223e3a0ec20f5e32295bade62332c49ced4d7738e4ab1d93f4781c83"

      def install
        bin.install "mise-v2026.4.9-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.9/mise-v2026.4.9-macos-x64"
      sha256 "ead6e8852cbd82ce674d9a4d52d09f9145bec9f4ac4801b7e78e1176df7840bd"

      def install
        bin.install "mise-v2026.4.9-macos-x64" => "mise"
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
