class NatsTls < Formula
  desc "Tool fr generating TLS keys and certificates for NATS"
  homepage "https://github.com/tanelmae/nats-tls"
  url "https://github.com/tanelmae/nats-tls/archive/master.zip"
  sha256 "97c8512dcc3443613c97769739fcb928eec622a6c1433682f969a0bf9f61a532"
  version "0.0.1"
  depends_on "go"

  def install
    system "go", "mod", "vendor"
    system "go", "build", "-mod", "vendor", "-o", "bin/nats-tls", "cmd/main.go"
    bin.install "bin/nats-tls" => "nats-tls"
  end

  test do
    system "false"
  end
end
