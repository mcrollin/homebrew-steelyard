class Steelyard < Formula
  desc "Analytics and visualization app size utility for Apple platforms developers."
  homepage "https://github.com/mcrollin/Steelyard"
  url "https://github.com/mcrollin/Steelyard.git",
    tag: "0.3.0"
  license "MIT"
  head "https://github.com/mcrollin/Steelyard.git", branch: "main"

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