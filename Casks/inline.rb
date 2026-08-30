cask "inline" do
  version "0.7.6"
  name "Inline CLI"
  desc "Command-line client for work chat"
  homepage "https://inline.chat/"

  on_macos do
    depends_on arch: :arm64
    sha256 "a2312549dc7a5327cb1ac69121e73a5552dced60a9efeb3b04ccd5c48717ff81"
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-aarch64-apple-darwin.tar.gz",
        verified: "github.com/inline-chat/inline/"
  end

  on_linux do
    arch arm: "aarch64", intel: "x86_64"
    sha256 arm64_linux:  "bbad6ab1e376a4b3c51533c68986307a214fe5f2845e5858db71d6e14c55cbf1",
           x86_64_linux: "775b0d988099248a276849a53b0bb8fceabe264c479f50453bee365c9371e04b"
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
