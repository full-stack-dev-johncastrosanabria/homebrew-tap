cask "usage-monitor" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "e820edbadf561cc5cc2291c83b28acdc2431856f8a31c964a1f6cddef35ac988",
         intel: "01e922d9b957399164474cb964c52b9615ccc4e9d61c1957acd9786b9885fde1"

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
