class XdgDocumentPortal < Formula
  desc "xdg-document-portal service offers a portal API for apps that are running in an xdg-app sandbox"
  homepage "https://wiki.gnome.org/Projects/SandboxedApps"

  head do
    url "https://github.com/alexlarsson/xdg-document-portal.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "glib"
  depends_on "libfuse"

  def install
    system "./autogen.sh"

    system "./configure", "--prefix=#{prefix}"

    system "make", "install"
  end
end

