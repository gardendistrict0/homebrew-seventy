class Seventy < Formula
  desc "Seventy programming language"
  homepage "https://github.com/gardendistrict0/seventy"
  url "https://github.com/gardendistrict0/seventy/releases/download/v0.1.0-beta/seventy-mac"
  sha256 "265c19a79ec79714b53ed349e93e93da5a2fca0b4a7674c1219fd23deb54b37e"
  license "zlib/libpng"

  def install
    bin.install "seventy-mac" => "seventy"
  end

  test do
    system "#{bin}/seventy", "--version"
  end
end
