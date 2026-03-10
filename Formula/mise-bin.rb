class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.3.6/mise-v2026.3.6-macos-arm64"
      sha256 "98bf313449d64f50a52821ae9202bdd1a611f8c777b20f1cc38cfbfa53665ac0"

      def install
        bin.install "mise-v2026.3.6-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.3.6/mise-v2026.3.6-macos-x64"
      sha256 "a3d1ee274b7fd25d6d7acdb515fb0f248ed3c91f958033e4b2efe1aecf87b66f"

      def install
        bin.install "mise-v2026.3.6-macos-x64" => "mise"
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
