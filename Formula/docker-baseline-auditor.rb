class DockerBaselineAuditor < Formula
  desc "Free, zero-dependency Docker security baseline auditor (CIS-Benchmark-adjacent)"
  homepage "https://github.com/errantsolutions/docker-baseline-auditor"
  url "https://github.com/errantsolutions/docker-baseline-auditor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5eb1a750c728de808a53cdc846cb94340dd68b92896a45b9efc2765eff582b97"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "docker-baseline-auditor.py" => "docker-baseline-auditor"
  end

  test do
    system "#{bin}/docker-baseline-auditor", "--help"
  end
end
