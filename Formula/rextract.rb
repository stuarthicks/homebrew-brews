# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rextract < Formula
  desc "Simple shell regex capture extractor"
  homepage "https://github.com/stuarthicks/rextract"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/stuarthicks/rextract/releases/download/v0.0.4/rextract_Darwin_x86_64.tar.gz"
      sha256 "9fd9d902373321df451c0aca683af6ab97289b2ce1efb72a7368dfccc83be272"

      def install
        bin.install "rextract"
      end
    end
    on_arm do
      url "https://github.com/stuarthicks/rextract/releases/download/v0.0.4/rextract_Darwin_arm64.tar.gz"
      sha256 "69702b86a1cc914dc6be6ca44f44223e98906d25d72b2b5fc8c4aba5a59fcf43"

      def install
        bin.install "rextract"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/rextract/releases/download/v0.0.4/rextract_Linux_x86_64.tar.gz"
        sha256 "839aa5b8eca9dc9385b449f6a6fe3253cbdd4a5a66c89006b76e46da7626de98"

        def install
          bin.install "rextract"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stuarthicks/rextract/releases/download/v0.0.4/rextract_Linux_arm64.tar.gz"
        sha256 "3872ac11f2026ef78f90bd832c04627abacb56c4abab7b3f58652d076ed43df2"

        def install
          bin.install "rextract"
        end
      end
    end
  end

  test do
    system "#{bin}/rextract -h"
  end
end
