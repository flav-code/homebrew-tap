cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "792f97287169efbef3e5092b83a28139e79ae7a2fd8b50556f297ec16ecee8e0",
         intel: "645a770a0cb1c26cb18237f5deedf7ffcc08ee4f775bc6a89ddc38261551b8c9"

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
