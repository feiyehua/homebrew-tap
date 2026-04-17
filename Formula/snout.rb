class Snout < Formula
  desc "Rime input method initialization and update tool - supports Wanxiang/Wusong/Baishuang/Bohe schemes"
  homepage "https://github.com/ca-x/snout"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ca-x/snout/releases/download/v0.2.2/snout-v0.2.2-macos-aarch64"
      sha256 "dfb1721c0537a2cd954b6d03e6074c8846936e49cbce07b9745d24f99f04906b"

      def install
        bin.install "snout-v0.2.2-macos-aarch64" => "snout"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ca-x/snout/releases/download/v0.2.2/snout-v0.2.2-macos-x86_64"
      sha256 "0c0891e840d28309f4384cfc630ccc1ed050620105396b18a16f567f836b840a"

      def install
        bin.install "snout-v0.2.2-macos-x86_64" => "snout"
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