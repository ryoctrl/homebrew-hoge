class Hoge < Formula
  desc ""
  homepage ""
  url "https://github.com/ryoctrl/hoge/releases/download/1.0.0/hoge-v0.0.0.tar.gz"
  sha256 "9ac23364ddcadd2bbb12d21811b5fbcf5c384f9d646ae73f3f96543cf83d5baf"
  license ""

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
  end

  test do
    system "false"
  end
end
