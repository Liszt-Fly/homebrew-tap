class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.9/stoa_Darwin_arm64.tar.gz"
      sha256 "86de8d8530ba9ea246ee6bac0577c18f3b512126b61d2668db89415d71ec38fe"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.9/stoa_Darwin_x86_64.tar.gz"
      sha256 "bda4853de5995aef5b13e8d23ad57bdc0be0d148b67b11673011be2df99e19c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.9/stoa_Linux_arm64.tar.gz"
      sha256 "0294710253d943007067b4ce2b9284e1edd494cbb9940f28877460e4d77068cd"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.9/stoa_Linux_x86_64.tar.gz"
      sha256 "7d89b48dcb7a5aea9a925db9a4fabf4cc19726daa13730bf4c2923c9e784d08a"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
