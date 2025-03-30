class Seventy < Formula
  desc "Seventy programming language"
  homepage "https://github.com/gardendistrict0/seventy"

  # macOS version
  if OS.mac?
    url "https://github.com/gardendistrict0/seventy/releases/download/v0.1.0-beta/seventy-mac"
    sha256 "265c19a79ec79714b53ed349e93e93da5a2fca0b4a7674c1219fd23deb54b37e"
  # Linux version
  elsif OS.linux?
    url "https://github.com/gardendistrict0/seventy/releases/download/v0.1.0-beta/seventy-linux"
    sha256 "248b1cd616c2d77ec3e3b5d69a08b2b8c2cae649d9829d641b449ad032924409"
  end

  license "zlib/libpng"

  def install
    bin.install "seventy-#{OS.mac? ? 'mac' : 'linux'}" => "seventy"
  end

  test do
    system "#{bin}/seventy", "--version"
  end
end
