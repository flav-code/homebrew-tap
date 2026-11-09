cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "a1933cf74df5ab642c22dc9392332a1f8bd696709557126f74a5c9dc8eedb843",
         intel: "407e9f512197e292fccad4f2ad4688aac2aaf127d9407b6d3dc9c9af3636a29a"

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
