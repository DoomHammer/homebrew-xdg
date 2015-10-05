class Xau < Formula
  url "http://xlibs.freedesktop.org/release/libXau-0.1.1.tar.bz2"
  sha256 "d7c42725a17ffd7c343fa1631b1c9f4899c26f971de5c8892d56af88cf54a4c4"

  depends_on "homebrew/xdg/xproto"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
