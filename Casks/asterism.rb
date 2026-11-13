cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "126a42f616505fe8ec84f66139e3b84b3cec72cb1cbe494075da7113362adf54",
         intel: "06054887c7c5fd81fa69e4a7248c0fd82e4c5b630f56255fdacd7ef873bd3bd0"

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
