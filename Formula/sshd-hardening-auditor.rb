class SshdHardeningAuditor < Formula
  desc "Free, zero-dependency SSH daemon hardening auditor (CIS/NIST-aligned checks)"
  homepage "https://github.com/errantsolutions/sshd-hardening-auditor"
  url "https://github.com/errantsolutions/sshd-hardening-auditor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f91392dd5bba01e9340fb22b6ab8d5086428e90c9b5d8a51addf11ac859ead70"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "sshd_audit.py" => "sshd-hardening-auditor"
  end

  test do
    system "#{bin}/sshd-hardening-auditor", "--help"
  end
end
