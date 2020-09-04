class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.11.tar.gz"
  sha256 "efc4e2ccb283f27ad3a5567cdd537e78293f9352a3ab095c100fa19ca5a3a579"
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
