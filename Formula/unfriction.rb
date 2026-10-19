class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.4.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.4.0/unfriction_0.4.0_darwin_arm64.tar.gz"
    sha256 "f01b5c1eca0f3072c6bfa4eecfaeff27e3d0810a9309ceaeace902a75cfb36c1"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.4.0/unfriction_0.4.0_darwin_amd64.tar.gz"
    sha256 "33f589421cccd0d42365e5be44c7375925e7bb6929778b477d8f467f66a899d3"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
