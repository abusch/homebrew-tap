class Sinuous < Formula
  desc "Simple TUI for controlling local Sonos speakers"
  homepage "https://github.com/abusch/sinuous"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.5.0/sinuous-aarch64-apple-darwin.tar.gz"
      sha256 "1dc9f2aa40bcfcd93d58e2d4da08aaaaddf418d1d660029a83a2873c569be19e"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.5.0/sinuous-x86_64-apple-darwin.tar.gz"
      sha256 "ee483ab6dd777114fe35cefcaadc1bf777760ea93a168678d02de028df5413b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abusch/sinuous/releases/download/v0.5.0/sinuous-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e2376814b78750f0b98bfd9476811e69cc665e446eabc8407477cc632461f596"
    end
    on_intel do
      url "https://github.com/abusch/sinuous/releases/download/v0.5.0/sinuous-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfe36e04da6fe1bb3d1067aeb02023fffec9f5b4ad6beea3d449107bcbf0477c"
    end
  end

  def install
    bin.install "sinuous"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sinuous --version")
  end
end
