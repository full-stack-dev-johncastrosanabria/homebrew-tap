cask "usage-monitor" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "b0e3a6ed2898883e5afea6d9fb8e5377c7439f54198b78a5386dd1b500026bee",
         intel: "1357498d5347440a686b54842b14fde4fa717042ca0f8f51db1c54f24f68faee"

  url "https://github.com/full-stack-dev-johncastrosanabria/usage-status-monitor/releases/download/v#{version}/UsageMonitor-#{version}-#{arch}.dmg"
  name "Usage Monitor"
  desc "Shows what is left in your AI subscriptions and switches Claude Code accounts"
  homepage "https://github.com/full-stack-dev-johncastrosanabria/usage-status-monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "UsageMonitor.app"
  binary "#{appdir}/UsageMonitor.app/Contents/Resources/usage"

  zap trash: "~/Library/Preferences/dev.usage-monitor.app.plist"
end
