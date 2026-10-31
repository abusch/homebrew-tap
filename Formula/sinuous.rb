class Sinuous < Formula
  desc "Simple TUI for controlling local Sonos speakers"
  homepage "https://github.com/abusch/sinuous"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.4.0/sinuous-aarch64-apple-darwin.tar.gz"
      sha256 "6b46d5ed3f0d6c8cae0c852568a0dcf8f947a2befe3cda5f850632c223eff996"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.4.0/sinuous-x86_64-apple-darwin.tar.gz"
      sha256 "aceff18d1963af89fd4af45dc827878d8b514498f23ecf7764d70835e3c81a99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.4.0/sinuous-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4322d95176b3025efa870281dd24426669a66d398014831efdbcb6f89d79742e"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.4.0/sinuous-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49b176094f90bd598b135a47a28b409e0547b638d7addef76be0186b911bab5c"
    end
  end

  def install
    bin.install "sinuous"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sinuous --version")
  end
end
