class Gig < Formula
  desc "Generate .gitignore files from GitHub's template collection"
  homepage "https://github.com/dgerlanc/gig"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.2.1/gig-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "875df94153849ef422cd0b1efaa74364e535e9b150002f3eb1adfb392ce99376"
    end
    on_arm do
      url "https://github.com/dgerlanc/gig/releases/download/v0.2.1/gig-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "cbaede9c87ecce1ebcc59722b869649a7be76096e2c22cd365a00f8958c64c01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.2.1/gig-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc11f9f632f81b751934ae8f38684032520f75e364453fd80bc8802ca20eded9"
    end
  end

  def install
    bin.install "gig"
  end

  test do
    system "#{bin}/gig", "--help"
  end
end
