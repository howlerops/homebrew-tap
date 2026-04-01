class Oculus < Formula
  desc "Go-native AI coding CLI with multi-model lens architecture"
  homepage "https://github.com/howlerops/oculus"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.2/oculus_0.5.2_darwin_arm64.tar.gz"
      sha256 "2eb41ee65cee7fcbfe54c81f0881fe72407f7929413a44ec5b5190bd60199e13"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.2/oculus_0.5.2_darwin_amd64.tar.gz"
      sha256 "109c8a0b97e4247e576e0bf0f97b3ec997dcc360ec45a565ad4b42082bf87d2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.2/oculus_0.5.2_linux_arm64.tar.gz"
      sha256 "eb3fa3bd12ca76cb71773ab27a290409370c34df451f988d01f704c78bb9050f"
    end
    on_intel do
      url "https://github.com/howlerops/oculus/releases/download/v0.5.2/oculus_0.5.2_linux_amd64.tar.gz"
      sha256 "827b296ed94005ed03f5c01089830a6103862bd36c3face597b321fbc2b52f70"
    end
  end

  def install
    bin.install "oculus"
  end

  test do
    system "#{bin}/oculus", "--help"
  end
end
