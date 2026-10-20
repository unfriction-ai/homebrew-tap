class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.5.1"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.1/unfriction_0.5.1_darwin_arm64.tar.gz"
    sha256 "c1bf2f2f8c4980aadcbf86baf289dc0c2327164a589a59822affb7f7a41b71a7"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.5.1/unfriction_0.5.1_darwin_amd64.tar.gz"
    sha256 "ffbb588919ec55debb5892973a51817de3343d98b6435176fc32d205387bb4b7"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
