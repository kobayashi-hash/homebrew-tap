class Rowman < Formula
  desc "A CLI tool to process and filter CSV data"
  homepage "https://github.com/kobayashi-hash/rowman"
  url "https://github.com/kobayashi-hash/rowman/releases/download/v1.0.0/rowman_darwin_arm64.tar.gz"
  sha256 "44b26c731a26068e06c024ad562f8a8017e232b696b5281031b6d71ef4eea595"
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
