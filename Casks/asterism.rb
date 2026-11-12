cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.12"
  sha256 arm:   "328b67477e7985113b9bf9480e115c89dd4d208ed391947352200c417d51e81a",
         intel: "81a50b7ef18b12a5f024f2f9e5a7c77393d7559fdf028dcba6094adfd8c0450a"

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
