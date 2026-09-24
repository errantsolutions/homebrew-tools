class TlsCertWatchdog < Formula
  desc "Zero-dependency Python tool that checks TLS certificate expiry"
  homepage "https://github.com/errantsolutions/tls-cert-watchdog"
  url "https://github.com/errantsolutions/tls-cert-watchdog/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d979a80e830579ad1f7893393c8fcc9e3a0ab77386a45ee1a6d9a6b259472cf4"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "cert_watch.py" => "tls-cert-watchdog"
  end

  test do
    system "#{bin}/tls-cert-watchdog", "--help"
  end
end
