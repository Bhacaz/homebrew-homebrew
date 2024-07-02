# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gostacking < Formula
  desc "Git stacking using merge"
  homepage "https://github.com/Bhacaz/gostacking"
  version "0.10.1"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/Bhacaz/gostacking/releases/download/v0.10.1/gostacking_Darwin_arm64.tar.gz"
    sha256 "345445a819bd8f1d29c6ed9b1baacc2cf0f2407bf12cd65cd4a072c70b4c3012"

    def install
      bin.install "gostacking"
      zsh_completion.install "completions/gostacking.zsh" => "_gostacking"
    end
  end
  if Hardware::CPU.intel?
    url "https://github.com/Bhacaz/gostacking/releases/download/v0.10.1/gostacking_Darwin_x86_64.tar.gz"
    sha256 "c6d31b7a40ffa3090eb5577347757cbb31c46991712b3563e52b1a4a188648b6"

    def install
      bin.install "gostacking"
      zsh_completion.install "completions/gostacking.zsh" => "_gostacking"
    end
  end
end
