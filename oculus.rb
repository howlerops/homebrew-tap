class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_darwin_arm64.tar.gz"
      sha256 "2d6519ff6810d3e2f908f0662948ce1da68bed11c103b8e066bf48260dd7cd59"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_darwin_amd64.tar.gz"
      sha256 "84bc7aebbf9496e51c74cdede88ebbfaa689970e77409780abc8c31c940dadbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_linux_arm64.tar.gz"
      sha256 "c4406adfd67723ec5c38527e5148ee25209a60273cf47388c79dde66b5cd95ed"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_linux_amd64.tar.gz"
      sha256 "c63b8db17e9ab10c8ac92b0bb83232d6eb343fdc3d0deea7da002c7e85f1cacb"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
