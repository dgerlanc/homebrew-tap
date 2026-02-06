class Gig < Formula
  desc "Generate .gitignore files from GitHub's template collection"
  homepage "https://github.com/dgerlanc/gig"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.3.0/gig-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f0d6e1afa9ab4c22db960c91f1509f9d5c10363ef3ece61c42bcfa27305b038d"
    end
    on_arm do
      url "https://github.com/dgerlanc/gig/releases/download/v0.3.0/gig-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b4a63829789fe4426909fa1118a90630447d86c6a39c745d6366a74b75951dc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dgerlanc/gig/releases/download/v0.3.0/gig-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aea0fcfb0364f8d89481d4ab4fbd3cf2a563783506128bdd10055f561715a437"
    end
  end

  def install
    bin.install "gig"
  end

  test do
    system "#{bin}/gig", "--help"
  end
end
