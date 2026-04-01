class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_darwin_arm64.tar.gz"
      sha256 "49bae0ed37404bee0705d09983366c57ebe269ec126dbce76dc535c4295fcdf7"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_darwin_amd64.tar.gz"
      sha256 "43f20e978714120162c66adc7941b4ad729f43a3c3e6f7e214ae597517396038"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_linux_arm64.tar.gz"
      sha256 "5e382dd7cd7ae7492fbe1813ac83f4ef1159abf07fff7c578df738562d6077c0"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.4.0/oculus_0.4.0_linux_amd64.tar.gz"
      sha256 "7c890f9d1f717dfa528053d145cbc2eb9d5ba0d40b00af5b7f4a7548bec99a0b"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
