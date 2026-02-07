class Gig < Formula
  desc "Generate .gitignore files from GitHub's template collection"
  homepage "https://github.com/dgerlanc/gig"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.3.1/gig-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "74111bafa3a247af23eb610d6bec095eddaf2f79cbfefd03f421479d140a49ba"
    end
    on_arm do
      url "https://github.com/dgerlanc/gig/releases/download/v0.3.1/gig-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "62c9414911bd117d914eee3a271ebbb07e081c068f21e639b287c6d76dd239b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.3.1/gig-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b673fec7d72b3e9f861bcec5b959866f31817c9e4556f4d9645fa19bd276473"
    end
  end

  def install
    bin.install "gig"
  end

  test do
    system "#{bin}/gig", "--help"
  end
end
