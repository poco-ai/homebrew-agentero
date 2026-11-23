cask "agentero" do
  version "0.18.1"

  on_macos do
    on_arm do
      sha256 "aa25b552c3a1e7d8584f4cbec10162b49e62cea1ecd68e2df0fccc5de6926df6"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "7454960321a6ae54168cdf2f8ad953f91481526b108bf8aba6a935f7d1505766"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "67582a508ea07ee036437103bf0e5b5599efbcd9f167c8839dbf43dac86945e1"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
