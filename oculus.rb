class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.3/oculus_0.5.3_darwin_arm64.tar.gz"
      sha256 "549d3eda78eb7059eef9862fedce2f80df53a128a17760f858a10ae2c3b0b4cd"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.3/oculus_0.5.3_darwin_amd64.tar.gz"
      sha256 "5cd4a1a5ded8bb52c9776ed532da13c7e7e1256edea03a53176e3a0919810b7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.3/oculus_0.5.3_linux_arm64.tar.gz"
      sha256 "93df25979dc0b80fa4fcc684738646645dff7bd5565354c9c4137bd9952106d6"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.3/oculus_0.5.3_linux_amd64.tar.gz"
      sha256 "edcb5c1a8ba62c5f5f94208c77034eb05d55e13ad322745bfa0b20e9a7dafe75"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
