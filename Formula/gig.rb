class Gig < Formula
  desc "Generate .gitignore files from GitHub's template collection"
  homepage "https://github.com/dgerlanc/gig"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.1.0/gig-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd5f03ad12a0f97c42c87f5b626b8aa5722a8b26f5a993583e368fc4755711e7"
    end
    on_arm do
      url "https://github.com/dgerlanc/gig/releases/download/v0.1.0/gig-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "586e43691fa518d05038d0d14d69c8ae5e6e82f3a27dd654fa85500a4a2f2907"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.1.0/gig-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a24862a66f18b9a81bd4a5268797a164dc19555a5944a5aa71617a39f14d1dfd"
    end
  end

  def install
    bin.install "gig"
  end

  test do
    system "#{bin}/gig", "--help"
  end
end
