cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.0"
  sha256 arm: "14621bd68f3c59b4b19cdd6936fefa78b608846e232b5abec7412d6138b70a21",
         intel: "eaf8f0c1f03ed0bfdacd6203a8cdf5c666628868e092b98891eeb788f846b4e4"

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
