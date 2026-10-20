class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.5.0"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.0/unfriction_0.5.0_darwin_arm64.tar.gz"
    sha256 "6aac2242735e1cbb9c5ae7bc7b4233ff15ddfeea70216c3e3c582edb8f6fa3ea"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.0/unfriction_0.5.0_darwin_amd64.tar.gz"
    sha256 "5e5d1bf0e8360faf0ae3bb277daa6a52b1abd86c7e41b11b516cef600fc51190"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
