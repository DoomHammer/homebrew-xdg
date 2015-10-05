class Libseccomp < Formula
  url "https://github.com/seccomp/libseccomp/releases/download/v2.2.3/libseccomp-2.2.3.tar.gz"
  version "2.2.3"
  sha256 "d9b400b703cab7bb04b84b9b6e52076a630b673819d7541757bcc16467b6d49e"

  head do
    url "https://github.com/seccomp/libseccomp.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  def install
    system "./autogen.sh", "--prefix=#{prefix}" if build.head?

    system "./configure", "--prefix=#{prefix}"

    system "make", "install"
  end
end
