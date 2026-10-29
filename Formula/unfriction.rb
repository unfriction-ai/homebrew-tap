class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.8.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.8.0/unfriction_0.8.0_darwin_arm64.tar.gz"
    sha256 "43c57f7dba10d9e1d6a7adf2809421b91c3615f18610320bac13356f91fdd7cb"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.8.0/unfriction_0.8.0_darwin_amd64.tar.gz"
    sha256 "6ac61f64f7957d83d5b0855c1d4bd75bc9531bac1289eb4653e49bff32c58f7b"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
