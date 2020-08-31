class Jb < Formula
  desc ""
  homepage ""
  url "https://github.com/ASalimov/jbuilder/archive/v1.9.tar.gz"
  sha256 "8e3a3f7e16bb394579a68b6108f3e90609f9695b89cefa0caebcafdce9b1bd59"
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
