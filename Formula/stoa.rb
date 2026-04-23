class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.10/stoa_Darwin_arm64.tar.gz"
      sha256 "295de43902a90f6994683992823abc97ebc61c786670959a3bba48fdd9ed90b2"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.10/stoa_Darwin_x86_64.tar.gz"
      sha256 "5c81f7ac2255655618df7c6aa98c335528ae581c5830574bcb331bbaa8d7f1ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.10/stoa_Linux_arm64.tar.gz"
      sha256 "4b13940544fea8e9908813ad38855020c3c51f1c617be4ef195ff995e6acad1c"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.10/stoa_Linux_x86_64.tar.gz"
      sha256 "e2c396a48d94446be8ae9e93d6f06ea53d77bb12fa59c78b3731accb986fc7ea"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
