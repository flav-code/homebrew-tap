cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.14"
  sha256 arm:   "a7145873bff10469fe1104c6ba415577b08dcca94e6761c41d0280c6034a5543",
         intel: "65f8a6888499c3933765a4687058f9b14e1653a77f92981b6db5b316912fadf3"

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
