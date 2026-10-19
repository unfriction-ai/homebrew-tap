class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.3.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.3.0/unfriction_0.3.0_darwin_arm64.tar.gz"
    sha256 "844d01c6c5fe046ae2185fc62c6c9d8d39a6a2bc22ae8ea7cee0db35ef0b610e"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.3.0/unfriction_0.3.0_darwin_amd64.tar.gz"
    sha256 "ed9a132ef50b76fade342d2a20946efc97e22c9f23e23366b9dc3549fc102f62"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
