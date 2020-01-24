class Gnostic < Formula
    desc "A compiler for APIs described by the OpenAPI Specification with plugins for code generation and other API support tasks."
    homepage "https://github.com/googleapis/gnostic"
    url "https://github.com/googleapis/gnostic/archive/v0.3.1.zip"
    sha256 "4de39009a9abf7c4c7481b46c2b8cfbed6d9dd9b89229fa2f6f8e28a3aa96319"
    version "0.3.1"
    depends_on "go"
    depends_on "protobuf"
    depends_on "protoc-gen-go"

    def install
      system "go", "mod", "vendor"
      system "go", "build", "-o", "bin/generate-gnostic", "./generate-gnostic"
      system "./bin/generate-gnostic", "--v2"
      system "./bin/generate-gnostic", "--v3"
      system "./bin/generate-gnostic", "--discovery"
      system "./COMPILE-PROTOS.sh"
      system "go", "build", "-mod", "vendor", "-o", "bin/gnostic", "gnostic.go"
      bin.install "bin/gnostic" => "gnostic"
    end

    test do
      system "false"
    end
  end
