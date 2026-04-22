class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.4/stoa_Darwin_arm64.tar.gz"
      sha256 "7cb1e9e60af1816ba5bea07053487a0e932beaa8dd82e7a33b997c9c1da7fc77"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.4/stoa_Darwin_x86_64.tar.gz"
      sha256 "1be59d605e27ae28f5b8c22ac506aa679d2813b85fe17fe278525e976db4d83a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.4/stoa_Linux_arm64.tar.gz"
      sha256 "1c8c8a6b26bf384e182cea5bafa57fb4400b602cf3ee1a893e8f19340651a5af"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.4/stoa_Linux_x86_64.tar.gz"
      sha256 "d316aa3bb0a944b16c0699c705fdff3d28ddbc0319b392d1baa343db293f339f"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
