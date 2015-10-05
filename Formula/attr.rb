class Attr < Formula
  desc "Commands for Manipulating Filesystem Extended Attributes"
  homepage "http://savannah.nongnu.org/projects/attr/"
  url "http://download.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz"
  version "2.4.47"
  sha256 "25772f653ac5b2e3ceeb89df50e4688891e21f723c460636548971652af0a859"

  head do
    url "git://git.savannah.nongnu.org/attr.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  depends_on "gettext" => :build

  def install
    system "./autogen.sh" if build.head?

    system "./configure", "--prefix=#{prefix}"

    system "make"

    system "make", "install", "install-dev", "install-lib"
  end
end
