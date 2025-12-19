class CreateApi < Formula
  desc ""
  homepage "https://github.com/FlabbergastAgency/CreateAPI"
  url "https://github.com/FlabbergastAgency/CreateAPI/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "8fad9f411884667bcd35467f815b0b3d81774f35392901c23517cf5658446b7c"
  license "MIT"

  depends_on :xcode => ["14.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/create-api"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/create-api --version")
  end
end
