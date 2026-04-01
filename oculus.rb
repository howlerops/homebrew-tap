class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.0/oculus_0.5.0_darwin_arm64.tar.gz"
      sha256 "226d65e6ed76a8f42fcb43fc47bd4baca45d9a066f502953385401d353a6c4a4"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.0/oculus_0.5.0_darwin_amd64.tar.gz"
      sha256 "8c3dd7565bda1b67b38a7390be01813dbea148fe393e453dae744f2bc5c015c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.0/oculus_0.5.0_linux_arm64.tar.gz"
      sha256 "4b4d36e17c40bcbb51da4ea7c2e16bf0c48ed14678236426a850efe091868213"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.0/oculus_0.5.0_linux_amd64.tar.gz"
      sha256 "db1e5d0dbb16ab6cdc398b866dafaa370342a20ea51e36ad1df094f54753a675"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
