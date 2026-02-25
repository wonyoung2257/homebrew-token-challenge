cask "token-challenge" do
  version "1.0.1"
  sha256 "a6e350a6b4aa50c4521982a1df5ae9a622f489037eef6ebf0353d1c8a96e8ead"

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
