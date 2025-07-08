class Rowman < Formula
  desc "A CLI tool to process and filter CSV data"
  homepage "https://github.com/kobayashi-hash/rowman"
  url "https://github.com/kobayashi-hash/rowman/releases/download/v1.0.0/rowman_darwin_arm64.tar.gz"
  sha256 "39d44eebe24bc72a0f8955bd8263d3e89ded9cc106b346c4dee4d75942db4bcf"
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
