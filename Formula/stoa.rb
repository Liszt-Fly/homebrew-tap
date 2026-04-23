class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.7/stoa_Darwin_arm64.tar.gz"
      sha256 "b0b5063c1609ed823246751f9307ea7825d734a86988be8c330c195978f46f21"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.7/stoa_Darwin_x86_64.tar.gz"
      sha256 "4c774ce5dbe843c281e776586542c9f72c5fc94926e78aedef81ff1e144cd588"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.7/stoa_Linux_arm64.tar.gz"
      sha256 "40288c6a054ec51958bed997f08be3331f98271f9e86a5f5ed05e70d81de2bb3"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.7/stoa_Linux_x86_64.tar.gz"
      sha256 "46e12feb0cd3b05ca7ee0e4cf1a52d8dd57fd7caa1408059596b2ca7de7d1718"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
