cask "asterism" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "22f3550e034209d86597d22be5441f35eecdebaca9fdab72644ba9aa8807e5f7",
         intel: "a0a03fed4884baa675e7d8e4e41fbc167d312486f771223c309080c047148327"

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
