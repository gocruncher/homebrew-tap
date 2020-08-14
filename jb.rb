class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.3.tar.gz"
  sha256 "ea14daece882e56baff6da5bc1e06d39f7ace5250c622a8ebb6145edc043e0c2"
  license ""

  depends_on "go" => :build
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jb" => "jb"
  end

  test do
    system "#{bin}/jb", "--help"
  end
end
