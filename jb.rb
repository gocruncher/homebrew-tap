class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/gocruncher/jbuilder/archive/v1.12.tar.gz"
  sha256 "7f34ee9ee671fc9bad237b2049bb259f35bdf355ab61b542fb90ec9fcf0ea966"
  license ""

  depends_on "go" => :build
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jbuilder" => "jb"
  end

  test do
    system "#{bin}/jb", "--help"
  end
end
