cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "af716d53dc92f010423429ea22fb9f5c56a525a84264a7bb62003532e0fbf77e",
         intel: "7db890d116f677163c76a640a763510d7ba86c67c94a3b04e649a5a6084a3292"

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
