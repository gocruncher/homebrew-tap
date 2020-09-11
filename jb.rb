class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/gocruncher/jbuilder/archive/v1.0.1.tar.gz"
  sha256 "355f0646dc444e7ca13baa694152c29a92187eb8620a28d7d0d6760e394baac7"
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
