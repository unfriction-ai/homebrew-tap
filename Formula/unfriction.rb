class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.1.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.1.0/unfriction_0.1.0_darwin_arm64.tar.gz"
    sha256 "f0f67f829a3f3207066ef9dd2a16555b1b10e43d381014d1dab6c08538bcdeea"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.1.0/unfriction_0.1.0_darwin_amd64.tar.gz"
    sha256 "d105a4dc2624e832350e695bfee38e8f4160223e62bf4d56f337bf10af4d067f"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
