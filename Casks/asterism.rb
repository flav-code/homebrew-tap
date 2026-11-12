cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "2a9ec205628f3b1f81b047b42adf355c865788636561370ccdbec7224d30e2ee",
         intel: "c895082ebfc2ea624f770c4d0fbc0c9815f98791f8a1ef41d5fd45edde45a120"

  url "https://github.com/flav-code/asterism/releases/download/v#{version}/Asterism-#{version}-macos-#{arch}.dmg"
  name "Asterism"
  desc "See every AI coding agent session on your machine at once"
  homepage "https://github.com/flav-code/asterism"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Asterism.app"

  zap trash: "~/Library/Application Support/Asterism"
end
