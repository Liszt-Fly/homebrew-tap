class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.3/stoa_Darwin_arm64.tar.gz"
      sha256 "27dcdda521df78debdbffacea661822dcf8c3682dd1a7998743e62943a45638e"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.3/stoa_Darwin_x86_64.tar.gz"
      sha256 "c317b1e064379d0580b72900e11c76f7768d44c776f351d99148851539e811f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.3/stoa_Linux_arm64.tar.gz"
      sha256 "d50dc082e5b768c8ad077d3c5c780e7e867fb0b234fbb6eb85047c5c262dd9eb"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.3/stoa_Linux_x86_64.tar.gz"
      sha256 "e1ee4b1c171df49e4a54de368ba6c749d2ff6eff1a427ea67fd2b1cdd1039137"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
