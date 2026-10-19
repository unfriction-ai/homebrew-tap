class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.2.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.0/unfriction_0.2.0_darwin_arm64.tar.gz"
    sha256 "285ddd743f4d086192ce04b91eb088cabda4afacc6278991f69de86588618314"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.0/unfriction_0.2.0_darwin_amd64.tar.gz"
    sha256 "1b946b8f345e504f8ca6f82cd0feb17ff68d5646fb90ec586d938577758621d4"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
