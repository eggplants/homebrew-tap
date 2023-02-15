class Xmas < Formula
  desc "Plant X'mas tree(s) on your Terminal"
  homepage "https://github.com/eggplants/sh-xmas"
  url "https://github.com/eggplants/sh-xmas/archive/refs/tags/0.0.5.tar.gz"
  version "0.0.5"
  sha256 "81f4b400c2dc710e10088dc2d79a1b7095a52ab0064726f30060e8aa94e9c2ae"
  license "MIT"
  head "https://github.com/eggplants/sh-xmas.git"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+(-\d+)?)$/i)
  end

  def install
    bin.install "xmas"
  end

  test do
    assert_match Regexp.new("^\d+\\.\d+\\.\d+$/"), shell_output("#{bin}/xmas --version").strip
  end
end
