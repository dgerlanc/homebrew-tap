class Gig < Formula
  desc "Generate .gitignore files from GitHub's template collection"
  homepage "https://github.com/dgerlanc/gig"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.2.0/gig-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "9312c850a851e0f0e2d95a82b0ce3d2caa6b34a89ba3b01c8535383fafe91808"
    end
    on_arm do
      url "https://github.com/dgerlanc/gig/releases/download/v0.2.0/gig-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a0458222cb04110a16afae13b78a0187445614e3f1e59d31ced59f3f43231a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.2.0/gig-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94751a6f3697d841fab17134d288d4e63992ffd69b1e17a622cba6e8d6b028bd"
    end
  end

  def install
    bin.install "gig"
  end

  test do
    system "#{bin}/gig", "--help"
  end
end
