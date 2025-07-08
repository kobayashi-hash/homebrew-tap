class Rowman < Formula
  desc "A CLI tool to process and filter CSV data"
  homepage "https://github.com/kobayashi-hash/rowman"
  url "https://github.com/kobayashi-hash/rowman/releases/tag/v1.0.0"
  sha256 "8982faac1d88c847e3dc2bb5edc3a026ec97e94b4310a1e032facb959dc45dad"
  version "1.0.0"
  license "MIT"
  option "without-completions", "Disable bash completions"
  depends on "bash-completion@2" => :optional

  def install
    bin.install "rowman"
    bash_completion.install "completions/bash/rowman" if build.with? "completions"
  end

  test do
    system bin/"rowman", "--version"
  end
end
