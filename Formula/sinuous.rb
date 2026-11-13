class Sinuous < Formula
  desc "Simple TUI for controlling local Sonos speakers"
  homepage "https://github.com/abusch/sinuous"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.6.0/sinuous-aarch64-apple-darwin.tar.gz"
      sha256 "e96e3b6b19bf8d3ae4dfb4493a63da53285f70dd2fba7989a2d7ad75a732614c"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.6.0/sinuous-x86_64-apple-darwin.tar.gz"
      sha256 "f101afbea09f4911dc6c9eab6393b46dcada4a6a3aa3a33959cad667f322a4ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.6.0/sinuous-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00025b0dfd13de700b4b15324cad72b30e64c2864a43354996ca460d02729660"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.6.0/sinuous-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8883ab78044c518c00271df54753fe4e216718b12bd81d39146d64f1546b1825"
    end
  end

  def install
    bin.install "sinuous"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sinuous --version")
  end
end
