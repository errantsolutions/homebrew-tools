class NginxConfigAuditor < Formula
  desc "Static analyzer for nginx configs - flags weak TLS, missing security headers, autoindex exposure"
  homepage "https://github.com/errantsolutions/nginx-config-auditor"
  url "https://github.com/errantsolutions/nginx-config-auditor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f6ea28aa59fbd2ebd33c543d3af3d2b6c77d93b7420ad6d77a7722e12a461278"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "nginx_config_auditor.py" => "nginx-config-auditor"
  end

  test do
    system "#{bin}/nginx-config-auditor", "--help"
  end
end
