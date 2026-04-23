class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.13/stoa_Darwin_arm64.tar.gz"
      sha256 "c086f64eb94b02acdb77fd3ddd1c52681785b0b5d0b510c46c7f0deac064b2c3"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.13/stoa_Darwin_x86_64.tar.gz"
      sha256 "3aa8b9acdc9ffd0d5f29cb9030741ece1d494cd4ebaa5bc6a904e5a0da255913"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.13/stoa_Linux_arm64.tar.gz"
      sha256 "c5c417ed5e2377795a4d7b6d191259ee8466d1b7e36f9aabe77dc0c3a26ceaf0"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.13/stoa_Linux_x86_64.tar.gz"
      sha256 "768f23f53ffeca2cc104d6f0f723e40ef9a61c8e636c42d4fc3768e8a6624052"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
