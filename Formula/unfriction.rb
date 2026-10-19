class Unfriction < Formula
  desc "Inspect recorded coding-agent runs"
  homepage "https://github.com/unfriction-ai/unfriction-releases"
  version "0.2.1"
  depends_on :macos

  on_arm do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.1/unfriction_0.2.1_darwin_arm64.tar.gz"
    sha256 "943db7612af0ad907a86a5ad54da78a4c2db714ff7f67ca556db688796af0036"
  end
  on_intel do
    url "https://github.com/unfriction-ai/unfriction-releases/releases/download/v0.2.1/unfriction_0.2.1_darwin_amd64.tar.gz"
    sha256 "56a658b01b759279c60fabda074b45461c3aee9dc9ab78a8a509f3fb77899292"
  end

  def install
    bin.install "unfriction"
  end

  test do
    assert_equal "unfriction #{version}\n", shell_output("#{bin}/unfriction --version")
  end
end
