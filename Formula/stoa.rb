class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.2/stoa_Darwin_arm64.tar.gz"
      sha256 "e0835d9631a063e2d6fbc45503d7109859c63f71f3ae62c92ef8ba83cddf47f2"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.2/stoa_Darwin_x86_64.tar.gz"
      sha256 "1709ae5e655fd77da55b297c63452ea86c81456067e2369e7cf6d85d8b881f84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.2/stoa_Linux_arm64.tar.gz"
      sha256 "034b826beebf806eb263f03889dac08d925629acf4f0bcb8093b97274c0a884c"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.2/stoa_Linux_x86_64.tar.gz"
      sha256 "c167aa0509bf16a2e9dff9b686bc1705fe9010168aa8fda133633c7c981a7510"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
