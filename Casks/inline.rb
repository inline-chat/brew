cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.1"
  sha256 arm: "1fa4e22839b66aba85a6977032fbff29191f98ee1bd103df72bb89ecc9ba9011",
         intel: "c7445e8c04a3baa84cd249a766476580aecf927f87c5f75b60f5c1747c77bf0c"

  url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-#{arch}-apple-darwin.tar.gz"
  name "Inline CLI"
  desc "Inline command-line client"
  homepage "https://inline.chat"

  binary "inline"

  zap trash: "~/.local/share/inline"

  livecheck do
    url "https://github.com/inline-chat/inline/releases"
    regex(/^cli-v(\d+(?:\.\d+)+)$/i)
  end
end
