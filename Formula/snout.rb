class Snout < Formula
  desc "Rime input method initialization and update tool - supports Wanxiang/Wusong/Baishuang/Bohe schemes"
  homepage "https://github.com/ca-x/snout"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ca-x/snout/releases/download/v0.2.7/snout-v0.2.7-macos-aarch64"
      sha256 "a23370007548ceabb72af893752c8e16749757665e27cc7d01a265f74af53c8a"

      def install
        bin.install "snout-v0.2.7-macos-aarch64" => "snout"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ca-x/snout/releases/download/v0.2.7/snout-v0.2.7-macos-x86_64"
      sha256 "643bc4d3de12cbeeccce83444f7ef7e7ae2ad6b63dfce4df07921c274681e6d5"

      def install
        bin.install "snout-v0.2.7-macos-x86_64" => "snout"
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