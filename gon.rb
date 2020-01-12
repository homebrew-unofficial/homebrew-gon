class Gon < Formula
  version '0.2.2'

  desc "Sign, notarize, and package macOS CLI tools and applications written in any language."
  homepage "https://github.com/mitchellh/gon"
  url "https://github.com/mitchellh/gon/releases/download/v#{version}/gon_#{version}_macos.zip"
  sha256 "5e1843bc06c8c17530f0b06325ebdfeae61cf6aa87e34435d307550d2f77cea6"

  def install
    bin.install "gon"
  end

  test do
    assert shell_output("#{bin}/gon -h").start_with?("Usage")
  end
end
