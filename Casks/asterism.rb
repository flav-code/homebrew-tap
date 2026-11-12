cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "e4bb815a56278fee9ff75a613eb294f2898bff46d1cf68d1e980e8c5c3e411e4",
         intel: "03989d09d93d9bd2217c172ff63cf8159435c5010ca403b1798e0519962c5e25"

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
