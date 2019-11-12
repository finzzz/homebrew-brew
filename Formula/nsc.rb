class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  url "https://github.com/nats-io/nsc/releases/download/0.3.14/nsc-darwin-amd64.zip"
  sha256 "40a8f92b7fad042a807fdc9b692d044ee739939976ede5bfb69c830980722efd"
  version "0.3.14"

  def install
    bin.install "nsc" => "nsc"
  end

  test do
    system "false"
  end
end
