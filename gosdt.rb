# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gosdt < Formula
  version "0.1"
  desc "Generalized Optimal Sparse Decisio Trees"
  homepage "https://github.com/margoseltzer/homebrew-gosdt"

  url "https://github.com/margoseltzer/homebrew-gosdt/raw/master/gosdt-0.1.0.tar.gz"
  sha256 "4ce6982fce5cce2aa530c9f4d8db571a274ddab746e18e5546cec02f08a8c735"
  
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
