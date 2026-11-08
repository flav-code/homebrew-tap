cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "5d6a34c0e3b00f3c74c6cfae614cf578f01025c9bcb9f9b627ec072a842451a1",
         intel: "9385cea2824ab978f4dce47aa1cfeec609a1dbad6db619a1a57500d48b6db21a"

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
