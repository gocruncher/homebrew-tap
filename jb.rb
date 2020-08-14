class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jb/archive/v1.1.tar.gz"
  sha256 "1289595d80b9a9fed823f49e3d509cc3737df304b1ec666499ecf9e4f066a18f"
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