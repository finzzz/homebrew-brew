class ProtocGenGo < Formula
    desc "Go support for Google's protocol buffers"
    homepage "https://github.com/golang/protobuf"
    url "https://github.com/golang/protobuf/archive/v1.3.2.zip"
    sha256 "52c7258dd74c4d8796d60aeed033fde70b61992b5bb8289c4338e18c285bf386"
    version "1.3.2"
    depends_on "go"

    def install
      system "go", "mod", "vendor"
      system "go", "build", "-mod", "vendor", "-o", "bin/protoc-gen-go", "protoc-gen-go/main.go"
      bin.install "bin/protoc-gen-go" => "protoc-gen-go"
    end

    test do
      system "false"
    end
  end
