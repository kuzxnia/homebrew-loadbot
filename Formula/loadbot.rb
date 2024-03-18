# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loadbot < Formula
  desc "Workload database driver"
  homepage "https://github.com/kuzxnia/loadbot"
  version "1.0.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.6/loadbot_1.0.6_darwin_x86_64.tar.gz"
      sha256 "a3242e772df52af10f060bbe55d4d1eaffd1a4466ef2915946423b1d6546dd16"

      def install
        bin.install "loadbot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.6/loadbot_1.0.6_darwin_arm64.tar.gz"
      sha256 "7b22ea6083749398c890e5b8837080d40bb301280bfe9b3d95d48f6eea7ca6c9"

      def install
        bin.install "loadbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.6/loadbot_1.0.6_linux_armv7.tar.gz"
      sha256 "581ec2da751f33e7f9df404e44d0fde951101f0936c36eb68209819c23d0cee5"

      def install
        bin.install "loadbot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.6/loadbot_1.0.6_linux_arm64.tar.gz"
      sha256 "bd0fdb7f58059ce71e0482cfabcd0eb23072b90d300980fa87157d6c87f958f7"

      def install
        bin.install "loadbot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.6/loadbot_1.0.6_linux_x86_64.tar.gz"
      sha256 "355b685c0b147f4027ddb46951a13fa9f8bc7f6499d2834988277796ada799c7"

      def install
        bin.install "loadbot"
      end
    end
  end

  test do
    system "#{bin}/loadbot -v"
  end
end
