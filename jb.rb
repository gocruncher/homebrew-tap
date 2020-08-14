class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.4.tar.gz"
  sha256 "0ad84079b093054ba29ed9371db8ec4ea77cc9f35b7b982601628db96772b03c"
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
