cask "agentero" do
  version "0.15.3"

  on_macos do
    on_arm do
      sha256 "0e58b8c6c14aacc284ebe43a850137dc4ce22decda0ce109f5a83cfbbeecbe1a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "a86011e0cdc33ef2bc0ccf310b7fc6a2e1b4e61dea483d0c6853c6c5a032a5a8"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "4216ffb0bfbf265d17c47269d2045f932491514e2b51dea0e52a75d7704a6272"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
