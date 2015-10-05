class Ostree < Formula
  desc "OSTree - \"git for operating system binaries\""
  homepage "https://wiki.gnome.org/action/show/Projects/OSTree?action=show&redirect=OSTree"

  head do
    url "git://git.gnome.org/ostree"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "e2fsprogs"
  depends_on "gpgme"

  def install
    system "./autogen.sh", "--prefix=#{prefix}" if build.head?

    system "./configure", "--prefix=#{prefix}"

    system "make", "install"
  end
end
