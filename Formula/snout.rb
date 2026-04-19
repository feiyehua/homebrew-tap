class Snout < Formula
  desc "Rime input method initialization and update tool - supports Wanxiang/Wusong/Baishuang/Bohe schemes"
  homepage "https://github.com/ca-x/snout"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ca-x/snout/releases/download/v0.2.6/snout-v0.2.6-macos-aarch64"
      sha256 "893dd7bc7f8b3a04c3dfa15a826ab363d7b5c774b28156adfa12078a8341d8ce"

      def install
        bin.install "snout-v0.2.6-macos-aarch64" => "snout"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ca-x/snout/releases/download/v0.2.6/snout-v0.2.6-macos-x86_64"
      sha256 "7310bf7b6b69b65d716a0f6d5bae20f65caefc4e262c93c15e85962f301d3308"

      def install
        bin.install "snout-v0.2.6-macos-x86_64" => "snout"
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