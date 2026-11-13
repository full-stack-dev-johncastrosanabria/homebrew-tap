cask "usage-monitor" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.2"
  sha256 arm:   "c920eb71ead94e4c0fc7c1cb5ca4d28ee0ad4851563e752b7ec185772c213366",
         intel: "266ecd880e90102b719142ce5aff9c94034a235a8052ca380af2f5ec6458f66a"

  url "https://github.com/full-stack-dev-johncastrosanabria/usage-status-monitor/releases/download/v#{version}/UsageMonitor-#{version}-#{arch}.dmg"
  name "Usage Monitor"
  desc "Shows what is left in your AI subscriptions and switches Claude Code accounts"
  homepage "https://github.com/full-stack-dev-johncastrosanabria/usage-status-monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "UsageMonitor.app"
  binary "#{appdir}/UsageMonitor.app/Contents/Resources/usage"

  zap trash: "~/Library/Preferences/dev.usage-monitor.app.plist"
end
