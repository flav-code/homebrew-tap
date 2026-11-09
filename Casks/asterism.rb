cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "cac2153047d23a6b8b12728605e8c71422748890c93a1c61775af6e1e9923903",
         intel: "7a85a57cfef6b334ef3539d8ae3d82a577ed927ca39dbc3fbe23eee8efe58939"

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
