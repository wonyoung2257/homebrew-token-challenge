cask "token-challenge" do
  version "1.0.2"
  sha256 "3d5f6086475681493c9b59c29c122a677ab0b27eb5884f458480520016664ed9"

  url "https://github.com/wonyoung2257/token-challenge/releases/download/v#{version}/TokenChallenge-#{version}.zip"
  name "TokenChallenge"
  desc "macOS menu bar app for tracking daily token usage"
  homepage "https://github.com/wonyoung2257/token-challenge"

  depends_on macos: ">= :sonoma"

  app "TokenChallenge.app"
end
