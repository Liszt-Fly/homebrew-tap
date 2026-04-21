class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.0/stoa_Darwin_arm64.tar.gz"
      sha256 "c873d17ead5475903183d6e08b7586fc46124aacc431264675a426934574e518"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.0/stoa_Darwin_x86_64.tar.gz"
      sha256 "6506f92b73662b0e1de817ddbe7bb83bd13166cbeeb9f1e6f2dcc73ef65289f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.0/stoa_Linux_arm64.tar.gz"
      sha256 "958af8ac2a44b6031f328673f4680835c6e9f20b682538600c9f3a9bd8ab883b"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.0/stoa_Linux_x86_64.tar.gz"
      sha256 "8e69a141b1660d22915a5eb4295a0bd5cd0791be3cb2ef9933e1999a58a0b3db"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
