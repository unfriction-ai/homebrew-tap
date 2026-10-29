class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.7.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.7.0/unfriction_0.7.0_darwin_arm64.tar.gz"
    sha256 "5c600e90aa4601357bfe0167e48d3c5f89fb694d2005d31c6e82fd08475eb525"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.7.0/unfriction_0.7.0_darwin_amd64.tar.gz"
    sha256 "b6e761006baddad1caa2ab63c233db530ee49243333aa56d56aceee3e9847ffe"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
