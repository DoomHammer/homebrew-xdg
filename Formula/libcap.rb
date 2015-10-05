class Libcap < Formula
  desc "Libcap implements the user-space interfaces to the POSIX 1003.1e capabilities available in Linux kernels."
  homepage "https://sites.google.com/site/fullycapable/"
  url "https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.24.tar.xz"
  version "2.24"
  sha256 "cee4568f78dc851d726fc93f25f4ed91cc223b1fe8259daa4a77158d174e6c65"
  head "git://git.kernel.org/pub/scm/linux/kernel/git/morgan/libcap.git"

  depends_on "homebrew/xdg/attr"

  def install
    system "make", "install", "prefix=#{prefix}", "LDFLAGS=-L#{prefix}/lib", "RAISE_SETFCAP=no"
  end
end
