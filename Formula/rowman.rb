class Rowman < Formula
  desc "A CLI tool to process and filter CSV data"
  homepage "https://github.com/kobayashi-hash/rowman"
  url "https://github.com/kobayashi-hash/rowman/releases/download/v1.0.0/rowman_darwin_arm64.tar.gz"
  sha256 "ea30e0ba19b26fbeb09ece83175f87bf3a1de7874998dd0ccf308400a03302ee"
  version "1.0.0"
  license "MIT"
  option "without-completions", "Disable bash completions"
  depends_on "bash-completion@2" => :optional

  def install
    bin.install "rowman"
    bash_completion.install "completions/bash/rowman" if build.with? "completions"
  end

  test do
    system bin/"rowman", "--version"
  end
end
