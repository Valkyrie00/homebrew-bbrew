# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bbrew < Formula
  desc "A simple TUI tool to make your brews bold."
  homepage "https://github.com/Valkyrie00/bold-brew"
  version "1.2.1"

  depends_on "go"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Valkyrie00/bold-brew/releases/download/v1.2.1/bbrew_1.2.1_darwin_amd64.tar.gz"
    sha256 "2103c49fc61d2fbaa554d63fe67ce9e14170fa6c96a9a9add589c138e46a595a"

    def install
      bin.install "bbrew"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Valkyrie00/bold-brew/releases/download/v1.2.1/bbrew_1.2.1_darwin_arm64.tar.gz"
    sha256 "c9bf18b6afa1928b487b84f4fe47abcd30b403fc3be21d14258083b2a353d2ba"

    def install
      bin.install "bbrew"
    end
  end

  test do
    system "#{bin}/bbrew --version"
  end
end
