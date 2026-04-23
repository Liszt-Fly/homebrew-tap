class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.12/stoa_Darwin_arm64.tar.gz"
      sha256 "05177412d7059bbb475b4c9af34591c74fa15ec1c8849f5355767888ac46d60f"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.12/stoa_Darwin_x86_64.tar.gz"
      sha256 "3075d9a0dfce79678f9800eeb114816a1310a710c241779c36864e4e13cc7a4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.12/stoa_Linux_arm64.tar.gz"
      sha256 "b45551fc315b769fc10800c57dd3f794a70bf57d3b1dcbc0ca48ba59da9b1082"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.12/stoa_Linux_x86_64.tar.gz"
      sha256 "2e6beab8cc6899a677ea94a012dd597a812faeff009706a4ef8376dc5d985678"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
