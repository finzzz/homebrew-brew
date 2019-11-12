class Denv < Formula
  desc "Docker Compose wrapper for git based projects"
  homepage "https://gist.github.com/tanelmae/e596c8ea00abaa40b51db75795394b88"
  url "https://github.com/tanelmae/denv/archive/v0.1.2.zip"
  sha256 "7232724ca665c09e0e52309d306812627da45cf05efa29197397e22de80b2e42"
  depends_on "git"
  version "0.1.2"

  def install
    bin.install "denv" => "denv"
    cp 'denv.bash-completion', '/usr/local/etc/bash_completion.d/denv.bash-completion'
  end

  test do
    system "false"
  end
end
