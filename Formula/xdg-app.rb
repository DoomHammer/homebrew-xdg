class XdgApp < Formula
  desc "Application deployment framework for desktop apps"
  homepage "https://wiki.gnome.org/Projects/SandboxedApps"
  url "http://www.freedesktop.org/software/xdg-app/releases/xdg-app-0.5.1.tar.xz"
  sha256 "bc0e9aa95768d9188c42b19ac57c41fcce315663dedd5e7eed56822d85598e8c"

  head do
    url "git://anongit.freedesktop.org/xdg-app/xdg-app"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "elfutils"
  depends_on "glib"
  depends_on "json-glib"
  depends_on "libcap"
  depends_on "libsoup"
  depends_on "libfuse"
  depends_on "linuxbrew/xorg/libxau"
  depends_on "doomhammer/xdg/gsystem"
  depends_on "doomhammer/xdg/ostree"
  depends_on "doomhammer/xdg/libseccomp"

  def install
    system "./autogen.sh", "--disable-documentation" if build.head?

    system "./configure", "--prefix=#{prefix}", "--disable-documentation"

    system "make", "install"
  end
end
