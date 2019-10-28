# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gosdt < Formula
  desc "Generalized Optimal Sparse Decisio Trees."
  homepage "https://github.com/margoseltzer/homebrew-sbrlmod/wiki"
  url "https://github.com/margoseltzer/homebrew-sbrlmod/files/175070/sbrlmod-1.0.tar.gz"
  version "1.0"
  sha256 "9eec103ed577189f99e34b957b00f01dc0c72bcf1d9b0f0c1d4eb466ab6627d4"
  # depends_on "cmake" => :build
  depends_on "boost"
  depends_on "tbb"
  depends_on "python"

  def install
    system "./configure", "--disable-debug",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/test"
  end
end
