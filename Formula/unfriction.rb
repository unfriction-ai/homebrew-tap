class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.2.2"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.2/unfriction_0.2.2_darwin_arm64.tar.gz"
    sha256 "8ed4c52d523e0bf31fa4c973168d18020aedcb7c1a3ddb1122c67f6ceda0d930"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.2/unfriction_0.2.2_darwin_amd64.tar.gz"
    sha256 "cc005022c10a087b15f96553a8cc39fcf2e0201b90ee201be7fd14034323df51"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
