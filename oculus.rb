class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.1/oculus_0.5.1_darwin_arm64.tar.gz"
      sha256 "325eefa8a2ff107e4f15842b7507e19c7fe3d3d923255500dd4f8ebdfcc5bbe7"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.1/oculus_0.5.1_darwin_amd64.tar.gz"
      sha256 "a96357351c59eac44cde9cea589063fd7ccac1ddef36459f18b1e3f596bd9833"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.1/oculus_0.5.1_linux_arm64.tar.gz"
      sha256 "489a6e47352206b745c02e1688a95fc5e03017d7f59df90da9183ad6a3f51137"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.1/oculus_0.5.1_linux_amd64.tar.gz"
      sha256 "c732ad95837afb70a3f1bd4ff4ccaf298801a6de1f57205754cdbc4abdb50cf1"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
