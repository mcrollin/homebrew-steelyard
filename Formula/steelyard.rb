class Steelyard < Formula
  desc "Analytics and visualization app size utility for Apple platforms developers."
  homepage "https://github.com/mcrollin/steelyard"
  url "https://github.com/mcrollin/steelyard.git",
    tag: "0.3.2"
  license "MIT"
  head "https://github.com/mcrollin/steelyard.git", branch: "main"

  depends_on xcode: ["13"]

  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--product", "steelyard"
    bin.install ".build/release/steelyard"
  end

  test do
    system "#{bin}/steelyard --help"
  end
end
