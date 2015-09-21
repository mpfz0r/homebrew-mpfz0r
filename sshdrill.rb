class Sshdrill < Formula
  desc "A ssh wrapper to automate tunnel creation over multiple jump hosts"
  homepage "https://github.com/mpfz0r/sshdrill"
  url "https://github.com/mpfz0r/sshdrill/archive/v0.9.tar.gz"
  version "0.9"
  sha256 "a9f8946e5fb8ca62b2fa7e1d5aecce38579fd63f7356aa5e9100f541edd7572c"

  def install
    system "make", "-f", "Makefile.osx", "install", "PREFIX=#{prefix}"
  end

  test do
    system "sshdrill -V"
  end
end
