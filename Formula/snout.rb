class Snout < Formula
  desc "Rime input method initialization and update tool - supports Wanxiang/Wusong/Baishuang/Bohe schemes"
  homepage "https://github.com/ca-x/snout"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ca-x/snout/releases/download/v0.1.2/snout-v0.1.2-macos-aarch64"
      sha256 "31ea4cf1f4a1bbde20f24a48a9a3bb28f701b803a57644222296db726654aa3d"

      def install
        bin.install "snout-v0.1.2-macos-aarch64" => "snout"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ca-x/snout/releases/download/v0.1.2/snout-v0.1.2-macos-x86_64"
      sha256 "d32874c509654e116abbcaacb3214b1b92958dd08dc7113a7410860c9e2f9699"

      def install
        bin.install "snout-v0.1.2-macos-x86_64" => "snout"
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