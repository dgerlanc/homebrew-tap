# This formula is auto-updated by GitHub Actions on release.
# Manual edits will be overwritten.

class Gig < Formula
  desc "Generate .gitignore files from GitHub's template collection"
  homepage "https://github.com/dgerlanc/gig"
  version "0.0.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.0.0/gig-v0.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/dgerlanc/gig/releases/download/v0.0.0/gig-v0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.0.0/gig-v0.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "gig"
  end

  test do
    system "#{bin}/gig", "--help"
  end
end
