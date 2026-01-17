cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.3"
  sha256 arm: "31176daccb9909d74182d1287626c57a198e336b18a736fbd31d24ed50f0046f",
         intel: "6970e09f0130602ba1debf6338bf0de8ef4fd3ec81529fd15c032588a7aaf398"

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
