class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.7.0/oculus_0.7.0_darwin_arm64.tar.gz"
      sha256 "30f2de22c8af545cc94e2ee28ec90d8cfe8f77c4fccc2d8e8b459cf95c58ddf7"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.7.0/oculus_0.7.0_darwin_amd64.tar.gz"
      sha256 "eb147660d91dc61bd5e64ca49da932d054696f2281ed93fac272d20934ae6eb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.7.0/oculus_0.7.0_linux_arm64.tar.gz"
      sha256 "9e50459bb5acd91c27beb063a07b47d0cba64555f9fd099ee1e122925a939503"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.7.0/oculus_0.7.0_linux_amd64.tar.gz"
      sha256 "4955d88b84c148d3fec6e106b059d74ab33d611435f2234df60b1d23321eadd9"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
