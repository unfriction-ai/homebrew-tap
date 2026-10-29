class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.6.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.6.0/unfriction_0.6.0_darwin_arm64.tar.gz"
    sha256 "396bc82fc5f4f7f73c838ce709a4dcb3c9954c8b2a98b238f7e104b4a955df98"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.6.0/unfriction_0.6.0_darwin_amd64.tar.gz"
    sha256 "959df83b0943fb634f2b994213bef0daff3f934369fc81d6b0829725a0a5bf8f"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
