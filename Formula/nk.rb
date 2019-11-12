class Nk < Formula
  desc "The nk utility program can be used to generate nkeys, signing, and verify signatures"
  homepage "https://nats-io.github.io/docs/nats_tools/nk.html"
  url "https://github.com/nats-io/nkeys/archive/v0.1.2.zip"
  sha256 "e5a9f47d342395d1d16dfede154b2d42854443bd3843fa91c6d8a70fb5d8c876"
  version "0.1.2"
  depends_on "go"

  def install
    system "go", "mod", "vendor"
    system "go", "build", "-mod", "vendor", "-o", "nk/nk", "nk/main.go"
    bin.install "nk/nk" => "nk"
  end

  test do
    system "false"
  end
end
