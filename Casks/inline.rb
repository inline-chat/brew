cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.4"
  sha256 arm: "895ad004acc273e99922a5e729898904acb75f058fa382b177142674c6ea9bf9",
         intel: "6bd229b55a8b7640b9714ee1a966bec7ba219273fb32869fde655efeefb17431"

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
