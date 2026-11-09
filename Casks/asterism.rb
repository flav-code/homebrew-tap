cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "6e131fb514bb116382a71df7afa3c27b0753e38665005bafc4082a16ce9c4f6d",
         intel: "7af50e17d43eeacc39fce75e5fe4cbee728daf46da5b65a8eac6aeba4ed9b348"

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
