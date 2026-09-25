class MailSecurityAuditor < Formula
  desc "Audits a domain's email security posture (SPF/DKIM/DMARC)"
  homepage "https://github.com/errantsolutions/mail-security-auditor"
  url "https://github.com/errantsolutions/mail-security-auditor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "676f7e353e123689c62960eae08c2400cbabcad2b260df245c76eb2af9f8e8a2"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "mail_audit.py" => "mail-security-auditor"
  end

  test do
    system "#{bin}/mail-security-auditor", "--help"
  end
end
