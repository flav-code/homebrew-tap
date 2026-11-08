cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "dc65bd8b39f640e2c7e3ec0402ee0addcde08583e2904e74bc9f15245a016329",
         intel: "d3439f8453d991cbee9ee753a3e84c3501c5b4764fb0f2241f4de0d3703b503a"

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
