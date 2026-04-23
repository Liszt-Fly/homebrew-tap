class Stoa < Formula
  desc "Terminal UI for browsing files and reviewing diffs"
  homepage "https://github.com/Liszt-Fly/stoa-releases"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.6/stoa_Darwin_arm64.tar.gz"
      sha256 "0f17e81119f2d85b5ccf07ba072a892c5622338b1239046267c821f03f1be50a"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.6/stoa_Darwin_x86_64.tar.gz"
      sha256 "73a7b348b4e2fa57724cbe73cfa819ae5d5d161418a8b9a66904dcbfc54eb641"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.6/stoa_Linux_arm64.tar.gz"
      sha256 "5644592919613d268186f8785eca4859a321edcbeb828e13e398510339aa9143"
    else
      url "https://github.com/Liszt-Fly/stoa-releases/releases/download/v0.1.6/stoa_Linux_x86_64.tar.gz"
      sha256 "fe5b6b1e9593d95ff3e79722d99a980ec87574fa5b762004a64b8337012255f7"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "version v#{version}", shell_output("#{bin}/stoa --version")
  end
end
