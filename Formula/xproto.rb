class Xproto < Formula
  url "http://xlibs.freedesktop.org/release/xproto-6.6.2.tar.bz2"
  sha256 "9c2bcfad5cd25c7fafcc86adccd14e0b859c444f351b449354c6524963a75e69"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
