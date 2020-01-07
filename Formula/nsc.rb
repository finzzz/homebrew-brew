class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "0.3.16"

  if OS.mac?
    url "https://github.com/nats-io/nsc/releases/download/0.3.16/nsc-darwin-amd64.zip"
    sha256 "788930a2096d847b0bb950d848fcc5614781a602e4edd51dabbe92f7e6d13418"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/nsc/releases/download/0.3.16/nsc-linux-amd64.zip"
      sha256 "8e3dfe28eac4793c6f1c1400bb3b31785a30e589078ff577b1420baa3ae13f97"
    end
  end

  def install
    bin.install "nsc" => "nsc"
  end

  test do
    system "#{bin}/nsc --version"
  end
end
