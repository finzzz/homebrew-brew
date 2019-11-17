class Natscmd < Formula
    desc "Simple NATS client for quick and dirty manual configuration testing"
    homepage "https://github.com/tanelmae/natscmd"
    url "https://github.com/tanelmae/natscmd/releases/download/v0.1.1/natscmd_0.1.1_Darwin_x86_64.tar.gz"
    sha256 "a98c8e0755baeb52185b5808d404a5ffdc925f8e7a984fd0d70472a252f22830"
    version "0.1.1"

    def install
      bin.install "natscmd"
    end

    test do
      system "natscmd", "-v"
    end
  end
