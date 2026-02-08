cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.2"
  sha256 arm: "928ad3f41712f6fbefbde92167acbc84ed1f8356b563e982c048f9a47abeffc7",
         intel: "6e5b606b719f091ed88500ccd6050e56d9c68964745bb4d5132146641007672d"

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
