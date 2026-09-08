cask "agentero" do
  version "0.9.6"

  on_macos do
    on_arm do
      sha256 "5901e9b82272513d9a0a70f5ffb255932c8d0b12f16f2dcf47e2cb0f97c6d3d7"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "5069a9315036f93a9519666229e4d29927b565bdb35caf5fa21dbb98ae1ffe86"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "eb38bd0a1fa2b1febe400221798fa62a5b35823e8feb1a021b6a089e73648009"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
