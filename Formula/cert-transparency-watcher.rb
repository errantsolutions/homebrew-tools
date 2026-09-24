class CertTransparencyWatcher < Formula
  desc "Catches rogue or unexpected TLS certificates via Certificate Transparency logs"
  homepage "https://github.com/errantsolutions/cert-transparency-watcher"
  url "https://github.com/errantsolutions/cert-transparency-watcher/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7827fb9913a459006bb55b1620e5d8110c5d9f495254c4775d58f18c26d1928c"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "cert_transparency_watcher.py" => "cert-transparency-watcher"
  end

  test do
    system "#{bin}/cert-transparency-watcher", "--help"
  end
end
