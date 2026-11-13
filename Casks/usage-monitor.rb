cask "usage-monitor" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.3"
  sha256 arm:   "80532855ebad6b8f4979441a464018c4f7d3286070bc19854dd567993fcb16ff",
         intel: "8b25ecd4304c5a837eebf7e3532fd773fa0b322ac01db6cc496ae41b6a495718"

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
