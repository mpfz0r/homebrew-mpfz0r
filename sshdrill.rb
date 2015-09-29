class Sshdrill < Formula
  desc "A ssh wrapper to automate tunnel creation over multiple jump hosts"
  homepage "https://github.com/mpfz0r/sshdrill"
  url "https://github.com/mpfz0r/sshdrill/archive/v1.0.tar.gz"
  sha256 "c2d7ea5e9f5f16557d2eb618404127c4711164ca2d81ee3177f88a72c4841d59"

  def install
    system "make", "-f", "Makefile.osx", "install", "PREFIX=#{prefix}"
  end

  test do
    system "sshdrill -V"
  end
end
