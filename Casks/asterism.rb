cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "6d9184d7b7c6a6fea1db51386ddfb23690af6183ed7bda493e677ddeca6c4c04",
         intel: "123d0d763cccd743cf5098396f105fc057ec728bf6aa3f5ef666e71de426f749"

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
