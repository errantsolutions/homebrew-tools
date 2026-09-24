class DnsHygieneChecker < Formula
  desc "Finds dangling/orphaned DNS records before an attacker does"
  homepage "https://github.com/errantsolutions/dns-hygiene-checker"
  url "https://github.com/errantsolutions/dns-hygiene-checker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "073b5f9d4259d560d88b870aed5d852e11eeb886cb00f7625f04db93bf8462e7"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "dns_hygiene_checker.py" => "dns-hygiene-checker"
  end

  test do
    system "#{bin}/dns-hygiene-checker", "--help"
  end
end
