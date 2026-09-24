class JsonSchemaDiff < Formula
  desc "Zero-dependency JSON Schema breaking-change detector for API versioning"
  homepage "https://github.com/errantsolutions/json-schema-diff"
  url "https://github.com/errantsolutions/json-schema-diff/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a1d2020a72808587592435a6183e3b3231203ca806cc43a31701090a3b6d771c"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "schema_diff.py" => "json-schema-diff"
  end

  test do
    system "#{bin}/json-schema-diff", "--help"
  end
end
