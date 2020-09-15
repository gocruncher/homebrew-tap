class Jj < Formula
  desc ""
  homepage ""
  url "https://github.com/gocruncher/jenkins-job-ctl/archive/v1.1.0.tar.gz"
  sha256 "355f0646dc444e7ca13baa694152c29a92187eb8620a28d7d0d6760e394baac7"
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
