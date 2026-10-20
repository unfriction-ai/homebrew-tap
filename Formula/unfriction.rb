class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.5.2"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.2/unfriction_0.5.2_darwin_arm64.tar.gz"
    sha256 "3ad8723f3672fa506eb8f0eee65589b023099b7f20734b1926427bb6859fecab"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.2/unfriction_0.5.2_darwin_amd64.tar.gz"
    sha256 "9872cd4781da186b480fded0c3b96141b71de18e431d743f78dcf32ee76eb51d"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
