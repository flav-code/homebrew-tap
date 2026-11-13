cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "20793293030c73da018ad8be9efecf389cbbd6e24f6601b8814858c0918ef32c",
         intel: "253b8b9b7738f2bc38af016be02f75763a4979b3a11923c75bef9aed61f9b1c6"

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
