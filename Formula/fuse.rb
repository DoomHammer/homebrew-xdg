class Fuse < Formula
  desc "Filesystem in Userspace"
  homepage "http://fuse.sourceforge.net/"
  url "http://downloads.sourceforge.net/project/fuse/fuse-2.X/2.9.4/fuse-2.9.4.tar.gz"
  version "2.9.4"
  sha256 "6be9c0bff6af8c677414935f31699ea5a7f8f5f791cfa5205be02ea186b97ce1"

  def install
    system "./autogen.sh", "--prefix=#{prefix}" if build.head?

    system "./configure", "--prefix=#{prefix}", "UDEV_RULES_PATH=#{prefix}/etc/udev/rules.d", "MOUNT_FUSE_PATH=#{prefix}/sbin", "INIT_D_PATH=#{prefix}/etc/init.d"

    system "make", "install"
  end
end
