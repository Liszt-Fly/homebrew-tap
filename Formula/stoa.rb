class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.5/stoa_Darwin_arm64.tar.gz"
      sha256 "090e76d76560acf628d66caf15b16c22432f054faca9382c93ab1b236ca16098"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.5/stoa_Darwin_x86_64.tar.gz"
      sha256 "d77548cac41f1e6d7ec39ea0cc4d01ef047af489e06de170f407979853e9801d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.5/stoa_Linux_arm64.tar.gz"
      sha256 "0441dde8a879849b3bfc2f24461f2da3fc50242ff946b99d25b224d9fe849a49"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.5/stoa_Linux_x86_64.tar.gz"
      sha256 "c7687050efa91015709b2ae199ec8884b29bfe5a9e5f212dd6a1a9e9d8dbd885"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
