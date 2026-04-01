class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.5/oculus_0.5.5_darwin_arm64.tar.gz"
      sha256 "f3c3f7cd17602089ad6afacb374501d047e915ff881d052d88cea5bdcdfdf297"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.5/oculus_0.5.5_darwin_amd64.tar.gz"
      sha256 "6f6372789962299b359f8e0e573c034498fbf334001efa825b17ab691ca2c4ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.5/oculus_0.5.5_linux_arm64.tar.gz"
      sha256 "77deae356620a3be41dcce4463a6a0c6bc3f609ea30d1bf074e644e6dc378bc3"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.5/oculus_0.5.5_linux_amd64.tar.gz"
      sha256 "298dfb35980abf60330c0bda2d9ce4e8d827a3aa68fda5aa4e1b3b745c96838c"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
