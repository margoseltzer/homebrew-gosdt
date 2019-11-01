# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gosdt < Formula
  version "0.1"
  desc "Generalized Optimal Sparse Decisio Trees"
  homepage "https://github.com/margoseltzer/homebrew-gosdt"

  url "https://github.com/margoseltzer/homebrew-gosdt/blob/master/gosdt-0.1.0.tar.gz"
  sha256 "cfffa9eb600fd69b0d026c219d69295ff3b60530ee5b7bb4666632ca35e6a336"

  depends_on "boost"
  depends_on "tbb"

  def install
    system "./configure", "--disable-debug",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/test"
  end
end
