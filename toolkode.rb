# typed: false
# frozen_string_literal: true

class Toolkode < Formula
  desc "The AI engineering terminal. Free."
  homepage "https://toolkode.com"
  license :cannot_represent
  version "1.4.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.4.1/toolkode-darwin-x64.zip"
      sha256 "1af1c7f2cfc5ffe4d1b280f4afbfce2bb3c0da8bc31a8e4d6c081860a0535749"

      def install
        bin.install "toolkode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.4.1/toolkode-darwin-arm64.zip"
      sha256 "434bb42fd17b4f97a0d2c54384223df90b7c2e26921d54dd954279165d140d15"

      def install
        bin.install "toolkode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.4.1/toolkode-linux-x64.tar.gz"
      sha256 "3dd952eef2685fab330f50a80cdb80c1b38540c7a747613448c5788551fdea3d"
      def install
        bin.install "toolkode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.4.1/toolkode-linux-arm64.tar.gz"
      sha256 "8c49095b816d06947cf98a00bc17fe4212dfb723b11a1144fb5ba03cce4084e0"
      def install
        bin.install "toolkode"
      end
    end
  end
end
