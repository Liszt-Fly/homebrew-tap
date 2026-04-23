class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.8/stoa_Darwin_arm64.tar.gz"
      sha256 "73f2916c3961779b5e89f4ae389a3ebfdb21e7dd9c612e9679fc84895d891b31"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.8/stoa_Darwin_x86_64.tar.gz"
      sha256 "415c71870322890d7eebf7d6597ff40d6b5f872a3be650d8646d9e81b4143875"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.8/stoa_Linux_arm64.tar.gz"
      sha256 "fdf33b9c40226419c4044979654359bbc550c5bb9c7030840bad407b678cb718"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.8/stoa_Linux_x86_64.tar.gz"
      sha256 "f1326af8a87a432ac6895415a116123ca5f75effd108417a5422f28bca0fe858"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
