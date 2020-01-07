class Nk < Formula
  desc "The nk utility program can be used to generate nkeys, signing, and verify signatures"
  homepage "https://nats-io.github.io/docs/nats_tools/nk.html"
  url "https://github.com/nats-io/nkeys/archive/v0.1.3.zip"
  sha256 "9afbf8c506d40312c801b97986b8f496ddb954fc04cfc746e85b9aa4de79d616"
  version "0.1.3"
  depends_on "go"

  def install
    system "go", "mod", "vendor"
    system "go", "build", "-mod", "vendor", "-ldflags", "-X main.Version=v0.1.3", "-o", "nk/nk", "nk/main.go"
    bin.install "nk/nk" => "nk"
  end

  test do
    system "false"
  end
end
