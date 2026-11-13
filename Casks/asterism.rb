cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "5502eb564c6704d72e776739e32e6ffddbd3530d8e930a28510e89cd173ca41c",
         intel: "5278f35e460421c7a8042e8907acf43626e42eef9f13079c51d64ddf2349c872"

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
