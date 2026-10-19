class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.2.3"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.3/unfriction_0.2.3_darwin_arm64.tar.gz"
    sha256 "4517636821ca267815cff88622f8769a20e529fdcdaf23cf6942b61a18078465"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.3/unfriction_0.2.3_darwin_amd64.tar.gz"
    sha256 "4c8f937937954145884d06a629ad45b11912b0246ab01bb4bf8e83cac30cfa2d"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
