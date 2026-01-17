cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.3"
  sha256 arm: "f42db8d2bbb65aece9de1b045fc7aba20de9fffc5eff8a1b999f1b3a69647292",
         intel: "6000cbab999821d05897fc1278b801db4b09cb0ac95a132c8055899d3497f1b9"

  url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-#{arch}-apple-darwin.tar.gz"
  name "Inline CLI"
  desc "Inline command-line client"
  homepage "https://inline.chat"

  binary "inline"

  livecheck do
    url "https://github.com/inline-chat/inline/releases"
    regex(/^cli-v(\d+(?:\.\d+)+)$/i)
  end
end
