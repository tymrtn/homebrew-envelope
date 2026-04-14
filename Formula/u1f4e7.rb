# Copyright (c) 2026 Tyler Martin
# Licensed under FSL-1.1-ALv2

class U1f4e7 < Formula
  desc "Envelope Email — BYO mailbox email client with agent-native primitives"
  homepage "https://u1f4e7.com"
  url "https://github.com/tymrtn/envelope-email/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "9f1a7175adaf11c15bf83c6e3dea9ff801cb6cc88cefbc605b83412020a6b2ec"
  license "FSL-1.1-ALv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "envelope 0.4.0", shell_output("#{bin}/envelope --version")
  end
end
