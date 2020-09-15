class Jj < Formula
  desc ""
  homepage ""
  url "https://github.com/gocruncher/jenkins-job-ctl/archive/v1.1.0.tar.gz"
  sha256 "db63a14502d69fd2638411b22a6f0563eecb06024c6763f7d6c43a10e5b2ffee"
  license ""

  depends_on "go" => :build
  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/jenkins-job-ctl" => "jj"
  end

  test do
    system "#{bin}/jj", "--help"
  end
end
