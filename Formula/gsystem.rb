class Gsystem < Formula
  desc "LibGSystem is a GIO-based library, targeted primarily for use by operating system components."
  homepage "https://wiki.gnome.org/Projects/LibGSystem"

  head do
    url "https://github.com/GNOME/libgsystem.git"

    depends_on "attr"
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "gtk-doc" => :build
    depends_on "libtool" => :build
  end

  def install
    system "./autogen.sh", "--prefix=#{prefix}" if build.head?

    system "./configure", "--prefix=#{prefix}"

    system "make", "install"
  end
end
