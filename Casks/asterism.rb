cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "61e28bc3568fe6c4f2877ea208f5a9cf1e6263daed90fcfdc24f77f23a6777a9",
         intel: "5e4f61b9bc32f05d992ca67f5d0d6289cdaadea63bf472ddd18ded4ea7ccfa8c"

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
