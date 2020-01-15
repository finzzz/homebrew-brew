class OapiCodegen < Formula
    desc "Generate Go client and server boilerplate from OpenAPI 3 specifications"
    homepage "https://github.com/deepmap/oapi-codegen"
    url "https://github.com/deepmap/oapi-codegen/archive/v1.3.3.tar.gz"
    sha256 "8ac96ad41682e8c5290af9cec1f18f3f72eeed4510232e65180124b869f90ce5"
    version "1.3.3"
    depends_on "go"

    def install
      system "go", "mod", "vendor"
      system "go", "build", "-mod", "vendor", "-o", "oapi-codegen", "cmd/oapi-codegen/oapi-codegen.go"
      bin.install "oapi-codegen" => "oapi-codegen"
    end

    test do
      system "false"
    end
  end

#
