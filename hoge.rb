class Hoge < Formula
  desc ""
  homepage ""
  url "https://github.com/ryoctrl/hoge/releases/download/1.0.0/hoge-v0.0.0.tar.gz"
  sha256 "9ac23364ddcadd2bbb12d21811b5fbcf5c384f9d646ae73f3f96543cf83d5baf"
  license ""

  def install
    inreplace "bin/hoge", /^CLIENT_HOME=/, "export HOGE_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="

    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/hoge"
  end

  test do
    system "false"
  end
end
