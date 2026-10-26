class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.5.4"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.4/unfriction_0.5.4_darwin_arm64.tar.gz"
    sha256 "e59ae6652895b864a7fbee54c886c76d6c37740521460aed3529b47f5d820dd0"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.4/unfriction_0.5.4_darwin_amd64.tar.gz"
    sha256 "bd18749a4cfc880183110536aa5c2826329f2b38b003d143753b45fc3dfcbb41"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
