class Sinuous < Formula
  desc "Simple TUI for controlling local Sonos speakers"
  homepage "https://github.com/abusch/sinuous"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.3.0/sinuous-aarch64-apple-darwin.tar.gz"
      sha256 "32aad978497c7d5d447098458169f91c7a2e8de6cb27c40b221c04f892307d55"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.3.0/sinuous-x86_64-apple-darwin.tar.gz"
      sha256 "fcd33df7b675f2d965e8f512399ea7a2ca511af1ea697a9d932c4c7de33bc711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.3.0/sinuous-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7315107270a33d97f9ddc6990e29184792ea138bd1e62cf4ff4395473689039f"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.3.0/sinuous-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a830f32e8c95c263a8c7324481c52bc9461574352fbc219712393bd0cc31bdea"
    end
  end

  def install
    bin.install "sinuous"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sinuous --version")
  end
end
