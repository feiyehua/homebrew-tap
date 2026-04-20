class Snout < Formula
  desc "Rime input method initialization and update tool - supports Wanxiang/Wusong/Baishuang/Bohe schemes"
  homepage "https://github.com/ca-x/snout"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ca-x/snout/releases/download/v0.2.8/snout-v0.2.8-macos-aarch64"
      sha256 "753b514d8250a78e67efa5d3a4cf8f3a9a1dfb326be5d37c2ba4f38db394c29e"

      def install
        bin.install "snout-v0.2.8-macos-aarch64" => "snout"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ca-x/snout/releases/download/v0.2.8/snout-v0.2.8-macos-x86_64"
      sha256 "e55a868e0856feffbc6721871cc87c2ac136269018e028e6b7c8a8ed8589bbbf"

      def install
        bin.install "snout-v0.2.8-macos-x86_64" => "snout"
      end
    end
  end

  def caveats
    <<~EOS
      snout has been installed!
      Run 'snout --help' to get started.

      Supported Rime schemes:
      - Wanxiang (万象)
      - Wusong (雾凇)
      - Baishuang (白霜)
      - Bohe (薄荷)
    EOS
  end

  test do
    system "#{bin}/snout", "--version"
  end
end