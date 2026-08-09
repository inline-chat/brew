cask "inline" do
  version "0.7.3"
  name "Inline CLI"
  desc "Command-line client for work chat"
  homepage "https://inline.chat/"

  on_macos do
    depends_on arch: :arm64
    sha256 "63e8b75ef824798073247e1afbcd5a3e59715eee6621ae9116f9ab94a4ffbdbc"
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-aarch64-apple-darwin.tar.gz",
        verified: "github.com/inline-chat/inline/"
  end

  on_linux do
    arch arm: "aarch64", intel: "x86_64"
    sha256 arm:   "0296c1cb48441cab784708c3b6d1a744e4b826d39d743507d8f665bd597d0583",
       intel: "ec953f40444498b73a9e5a3fe047707d756b2e0817712d5eecff963ce68833dc"
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-#{arch}-unknown-linux-gnu.tar.gz",
        verified: "github.com/inline-chat/inline/"
  end

  livecheck do
    url "https://github.com/inline-chat/inline/releases"
    regex(/^cli-v(\d+(?:\.\d+)+)$/i)
  end

  binary "inline"

  zap trash: "~/.local/share/inline"
end
