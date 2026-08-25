cask "inline" do
  version "0.7.4"
  name "Inline CLI"
  desc "Command-line client for work chat"
  homepage "https://inline.chat/"

  on_macos do
    depends_on arch: :arm64
    sha256 "cd9b2422ee3202446e599d5fa85ab45080e510ed729643fb6ad21bb6f930e943"
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-aarch64-apple-darwin.tar.gz",
        verified: "github.com/inline-chat/inline/"
  end

  on_linux do
    arch arm: "aarch64", intel: "x86_64"
    sha256 arm:   "e9f57fe5b5f14e496341d9a69f7c8fd78990430207341de74f2fb2ff27918ec2",
       intel: "83fffbe7da27974b911c3391da39de3e4777720078fbb549085244be7d9fa463"
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
