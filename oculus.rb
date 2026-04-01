class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.4/oculus_0.5.4_darwin_arm64.tar.gz"
      sha256 "78b3dab0d947e74834cc4e3ecd4f4d731abd820b2f8ae683553e60d4543d09ee"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.4/oculus_0.5.4_darwin_amd64.tar.gz"
      sha256 "92c47da9b124e067471a60d71965296c909691ba2cbda77c3511eb476f03d671"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.4/oculus_0.5.4_linux_arm64.tar.gz"
      sha256 "bd81b373d4563c52bc57ba565fc2cf4d742e33c6dab818c01e79da0bc3a77c97"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.4/oculus_0.5.4_linux_amd64.tar.gz"
      sha256 "5e6c3dbb1eadd849a5084ecf361756c3b34db29b53a07ab16ede9913ee579407"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
