class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.6.tar.gz"
  sha256 "5be702c9dff1270c62c936ad71a17219705103a8cae199c7dc1c5dbf89ea6a32"
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
