class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.5.tar.gz"
  sha256 "e3e35388a64383014d97aa1d41c9e154935467309e3c19879845d5102e4f9f8d"
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
