cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "ad27848c292468ddabcb2b47844a9731afdb5f2322d7d1e00ef1dfaa39755dcd",
         intel: "1702f2506b71b9f9362aaf56c6006ce682633545aeee1a121c039fb357ae00b6"

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
