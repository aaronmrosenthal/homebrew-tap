# typed: false
# frozen_string_literal: true

class Toolkode < Formula
  desc "The AI engineering terminal. Free."
  homepage "https://toolkode.com"
  version "1.3.7"
  license :cannot_represent

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.3.7/toolkode-darwin-x64.zip"
      sha256 "605699e586ac16d0e2bf7e010bad287de71536dc88d82a7b701b831f419c2572"

      def install
        bin.install "toolkode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.3.7/toolkode-darwin-arm64.zip"
      sha256 "4030263d908b3ef777054229f3cd99eb88991edec96d309e519deefe9faec70b"

      def install
        bin.install "toolkode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.3.7/toolkode-linux-x64.tar.gz"
      sha256 "3c62aed02b9bb20db2d32369352aa32c22358495d686ca23ebd52668c4f8dd71"
      def install
        bin.install "toolkode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/aaronmrosenthal/toolkode-releases/releases/download/v1.3.7/toolkode-linux-arm64.tar.gz"
      sha256 "54cc8e6266404088d64dcc26868dcf5f051e45ba5d9a891cad66eeb636528f4f"
      def install
        bin.install "toolkode"
      end
    end
  end
end
