class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.7.tar.gz"
  sha256 "6a5fe2921a698939b7296fbe0c96309b9eb3ab7daae7ff371bd5e1174be9c34a"
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
