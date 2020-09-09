class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/gocruncher/jbuilder/archive/v1.12.tar.gz"
  sha256 "17a365f27938c8e2016d724cd77f7bbf3f62f5eb234ce3605260c3ce4453b9ba"
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
