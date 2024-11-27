class OapiCodegen < Formula
    desc "Generate Go client and server boilerplate from OpenAPI 3 specifications"
    homepage "https://github.com/deepmap/oapi-codegen"
    url "https://github.com/deepmap/oapi-codegen/archive/v2.4.1.tar.gz"
    sha256 "5c9f4fdffb5910729fc0c9350f69a500306e13457da4f3889aa19bec71a69a8c"
    version "2.4.1"
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
