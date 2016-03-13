class XdgApp < Formula
  desc "Application deployment framework for desktop apps"
  homepage "https://wiki.gnome.org/Projects/SandboxedApps"
  url "http://www.freedesktop.org/software/xdg-app/releases/xdg-app-0.4.13.tar.xz"
  sha256 "c4be82ba5e149edef085339b224715541b85966bd818309cc4b3bc5111991b30"

  head do
    url "git://anongit.freedesktop.org/xdg-app/xdg-app"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "glib"
  depends_on "libcap"
  depends_on "libsoup"
  depends_on "libfuse"
  depends_on "doomhammer/xdg/xau"
  depends_on "doomhammer/xdg/gsystem"
  depends_on "doomhammer/xdg/ostree"
  depends_on "doomhammer/xdg/libseccomp"

  def install
    system "./autogen.sh", "--disable-documentation" if build.head?

    system "./configure", "--prefix=#{prefix}", "--disable-documentation"

    system "make", "install"
  end
end
