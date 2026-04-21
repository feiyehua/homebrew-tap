class Snout < Formula
  desc "Rime input method initialization and update tool - supports Wanxiang/Wusong/Baishuang/Bohe schemes"
  homepage "https://github.com/ca-x/snout"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ca-x/snout/releases/download/v0.2.9/snout-v0.2.9-macos-aarch64"
      sha256 "2e27da7d3c84ee6ca3a14bca1e8c24f43daf55e883a04bc271764839e7ce416d"

      def install
        bin.install "snout-v0.2.9-macos-aarch64" => "snout"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ca-x/snout/releases/download/v0.2.9/snout-v0.2.9-macos-x86_64"
      sha256 "3acabc95aa56583d5cfff889aba9d5ccc943e2f569d8a7f7977e4475f2777bb1"

      def install
        bin.install "snout-v0.2.9-macos-x86_64" => "snout"
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