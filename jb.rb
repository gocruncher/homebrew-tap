class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.8.tar.gz"
  sha256 "85a5c7b3bda3c87b0265a636223845c05aa5648ce97c13a0ec73ec065f996ed9"
  license ""

  depends_on "go" => :build
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jbuilder" => "jbuilder"
    bin.install ".gobuild/bin/jbuilder" => "job"
  end

  test do
    system "#{bin}/jbuilder", "--help"
  end
end
