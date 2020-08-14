class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jb/archive/v1.2.tar.gz"
  sha256 "d43987a409b26390c231bbd2f0f9e9d8d5444e76e8e93e1614ef786f518b6cc8"
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
