class Herdr < Formula
  desc "Supervise multiple coding agents in one terminal"
  homepage "https://github.com/ogulcancelik/herdr"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ogulcancelik/herdr/releases/download/v#{version}/herdr-macos-aarch64"
      sha256 "fa178aff6f70160e096ab12ab35e52a4e31ece6d8e149022f57f713f690a73e0"

      def install
        bin.install "herdr-macos-aarch64" => "herdr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ogulcancelik/herdr/releases/download/v#{version}/herdr-macos-x86_64"
      sha256 "d016de4b456896ddd3899a09aa19c4c53e7a3f6777221f8baaac04cdc7e0ddb4"

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