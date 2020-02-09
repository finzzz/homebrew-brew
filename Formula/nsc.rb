class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "0.4.0"

  if OS.mac?
    url "https://github.com/nats-io/nsc/releases/download/0.4.0/nsc-darwin-amd64.zip"
    sha256 "fa18af6ee1f72291884ac0bb681f9e783098287361ea2a644aa767a207eaf6ff"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/nsc/releases/download/0.4.0/nsc-linux-amd64.zip"
      sha256 "ab298e14822977937187dc14eb9ace55d36621be9b0e1cd10cdde6d51f97bd13"
    end
  end

  def install
    bin.install "nsc" => "nsc"
  end

  test do
    system "#{bin}/nsc --version"
  end
end
