class Jj < Formula
  desc ""
  homepage ""
  url "https://github.com/gocruncher/jenkins-job-cli/archive/v1.1.2.tar.gz"
  sha256 "60cfd0f7d100edecb5428f98a77e5492438ea40377bfd20852fa5576ea7f184a"
  license ""

  depends_on "go" => :build
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jenkins-job-cli" => "jj"
  end

  test do
    system "#{bin}/jj", "--help"
  end
end
