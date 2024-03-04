# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loadbot < Formula
  desc "Workload database driver"
  homepage "https://github.com/kuzxnia/loadbot"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.3/loadbot_1.0.3_darwin_arm64.tar.gz"
      sha256 "03947bd8cbd662f736ec93b1ab503a89e40adf1eeb0fe18a8870284449f6e8dc"

      def install
        bin.install "loadbot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.3/loadbot_1.0.3_darwin_x86_64.tar.gz"
      sha256 "d7524f6720e599f8b993671fc4f622c1d62cf7cbb3df743e2b3f4d2be673e771"

      def install
        bin.install "loadbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.3/loadbot_1.0.3_linux_armv7.tar.gz"
      sha256 "96d2b1b8417515a833e3bf4a51cfa880290c8a7c8bcf60dad3f48ad4d2dbe8cb"

      def install
        bin.install "loadbot"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.3/loadbot_1.0.3_linux_arm64.tar.gz"
      sha256 "441e028923e3fb222f16634ebae0e1c154ac14124aeeec0b9053d787947f23f0"

      def install
        bin.install "loadbot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kuzxnia/loadbot/releases/download/1.0.3/loadbot_1.0.3_linux_x86_64.tar.gz"
      sha256 "190dc04e6d463cf8f9e0d4407dee250a3de9e7fa472050ccecbbe68b791eed7a"

      def install
        bin.install "loadbot"
      end
    end
  end

  test do
    system "#{bin}/loadbot -v"
  end
end
