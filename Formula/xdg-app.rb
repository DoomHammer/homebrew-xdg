class XdgApp < Formula
  desc "Application deployment framework for desktop apps"
  homepage "https://wiki.gnome.org/Projects/SandboxedApps"
  url "http://www.freedesktop.org/software/xdg-app/releases/xdg-app-0.4.4.tar.xz"
  version "0.4.4"
  sha256 "d672bc83ad618c89b10b9234188c166efd58f8e0fa4095bd25a1a732696525a5"

  head do
    url "git://anongit.freedesktop.org/xdg-app/xdg-app"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "glib"
  depends_on "libsoup"
  depends_on "homebrew/xdg/libcap"
  depends_on "homebrew/xdg/xau"
  depends_on "homebrew/xdg/gsystem"
  depends_on "homebrew/xdg/ostree"
  depends_on "homebrew/xdg/fuse"
  depends_on "homebrew/xdg/libseccomp"

  def install
    system "./autogen.sh", "--disable-documentation" if build.head?

    system "./configure", "--prefix=#{prefix}", "--disable-documentation"

    system "make", "install"
  end
end
