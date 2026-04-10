# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class U1f4e7 < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/envelope-email/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e91dfa25a3db61986480c49e97caa6d8b3c66899abc2b94aa8cbce1b6a173e90"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope", shell_output("#{bin}/envelope --version")
  end
end
