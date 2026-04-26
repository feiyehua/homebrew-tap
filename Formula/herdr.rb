class Herdr < Formula
  desc "Supervise multiple coding agents in one terminal"
  homepage "https://github.com/ogulcancelik/herdr"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ogulcancelik/herdr/releases/download/v#{version}/herdr-macos-aarch64"
      sha256 "87b66a4f51d6df7c1694e97103877fe8829019dde4385311ff88f1498c2d5a93"

      def install
        bin.install "herdr-macos-aarch64" => "herdr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ogulcancelik/herdr/releases/download/v#{version}/herdr-macos-x86_64"
      sha256 "ca8a7b02612032026c7a657996f111ecbfb53e72c0b2c64b822c9c7ff87c830d"

      def install
        bin.install "herdr-macos-x86_64" => "herdr"
      end
    end
  end

  def caveats
    <<~EOS
      herdr has been installed!
      Run 'herdr --help' to get started.
    EOS
  end

  test do
    system "#{bin}/herdr", "--version"
  end
end