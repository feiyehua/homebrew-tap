class MiseBin < Formula
  desc "The front-end to your dev env (polyglot version manager)"
  homepage "https://mise.jdx.dev/"
  version "2026.4.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdx/mise/releases/download/v2026.4.23/mise-v2026.4.23-macos-arm64"
      sha256 "4aa0e5eca7b69f9fb9eb2a94911cf661f26e49c7516ce012a9d26b923266bcaf"

      def install
        bin.install "mise-v2026.4.23-macos-arm64" => "mise"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jdx/mise/releases/download/v2026.4.23/mise-v2026.4.23-macos-x64"
      sha256 "270abd2581da0a0ec4c0eb3c73a6701e07413e29761317280f51ee15267ffd60"

      def install
        bin.install "mise-v2026.4.23-macos-x64" => "mise"
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
