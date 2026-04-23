class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.11/stoa_Darwin_arm64.tar.gz"
      sha256 "78342bab13b6fa7d12427f9fece5e5e921218888c54a925c3ba9dc37063449be"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.11/stoa_Darwin_x86_64.tar.gz"
      sha256 "aaf3ee0d2b1c5693b120b28ae039ecf04a72d2496313db35825ec0d125a043c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.11/stoa_Linux_arm64.tar.gz"
      sha256 "98b184210b994725d5d0cdf441d3d09fa45fcb0d6a2382a8b574a0946f93be20"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.11/stoa_Linux_x86_64.tar.gz"
      sha256 "848aa15fd55ab6a8e3bd8208c5072766577aeeb138361b0d55cf3f1955264029"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
