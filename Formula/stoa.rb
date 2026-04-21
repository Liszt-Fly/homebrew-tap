class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.1/stoa_Darwin_arm64.tar.gz"
      sha256 "deeb0145ed4ba73736d72ee775c69b8d5987959f0c73df8ebe9d3d846c11e0b5"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.1/stoa_Darwin_x86_64.tar.gz"
      sha256 "c95bc5b9a151f95be30233737cf2d92bdd52bd2f3d914d4550cc3715eda7edb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.1/stoa_Linux_arm64.tar.gz"
      sha256 "83ef5678e4dc3b4dd2f41abae7fc063416b5bb17dbfae99ee4fc3d7a510b6b51"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.1/stoa_Linux_x86_64.tar.gz"
      sha256 "aab78fe3ed872532ced7053d773fbf7822c26caf1368d559b0ea2f3472986c2f"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
