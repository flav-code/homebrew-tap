cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "6fc503da834d4349e76363db46b62190c22ca189871235ad25a9459193589100",
         intel: "733f1ba7ec800f25bc8124254e9d45bbdea1d347ffe8268169372be0cb435e47"

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
