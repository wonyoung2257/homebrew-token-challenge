cask "token-challenge" do
  version "1.0.0"
  sha256 "96f47759941b8e78573bd287ed0492fa228e809466f94afcd7fbed65503bafed"

  url "https://github.com/wonyoung2257/token-challenge/releases/download/v#{version}/TokenChallenge-#{version}.zip"
  name "TokenChallenge"
  desc "macOS menu bar app for tracking daily token usage"
  homepage "https://github.com/wonyoung2257/token-challenge"

  depends_on macos: ">= :sonoma"

  app "TokenChallenge.app"

  caveats <<~EOS
    #{token} is not signed with an Apple Developer certificate.
    On first launch, macOS may block it. To allow it:
      1. Open System Settings > Privacy & Security
      2. Scroll down and click "Open Anyway" next to the TokenChallenge message
    Or run:
      xattr -d com.apple.quarantine /Applications/TokenChallenge.app
  EOS
end
