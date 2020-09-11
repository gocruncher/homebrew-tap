class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/gocruncher/jbuilder/archive/v1.0.0.tar.gz"
  sha256 "02a1e037320848354d535b181a366e2e07c6385d84630862ac30f208659fa6c4"
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
