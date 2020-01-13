# This file was generated by GoReleaser. DO NOT EDIT.
class NatsTls < Formula
  desc "Tool for generating NATS TLS keys and certificates"
  homepage "https://github.com/tanelmae/nats-tls"
  version "0.1.6"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/tanelmae/nats-tls/releases/download/v0.1.6/nats-tls_0.1.6_Darwin_x86_64.tar.gz"
    sha256 "6a5e2f1788723a78ff1380258ff5c461844614bc6758b763ea31dd435318b626"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/tanelmae/nats-tls/releases/download/v0.1.6/nats-tls_0.1.6_Linux_x86_64.tar.gz"
      sha256 "0264f05aa22c38e5bc6f5988652273d36b44eca48e7759d2878153fec247ac1c"
    end
  end

  def install
    bin.install "nats-tls"
  end

  test do
    system "#{bin}/nats-tls -v"
  end
end
