class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.5.3"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.3/unfriction_0.5.3_darwin_arm64.tar.gz"
    sha256 "d9ecd79c4583529f9b27907968c8be86f094499344f1cbb5dd17da5d4e561ef5"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.3/unfriction_0.5.3_darwin_amd64.tar.gz"
    sha256 "e7563002b2019a88b8556e8f06fb34922ee5438138b8ca590e353f83cd382445"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
