cask "agentero" do
  version "0.15.2"

  on_macos do
    on_arm do
      sha256 "9983c34681bad9a74412412235531ffd2217d7d4fd589c51c91917134c2b1e62"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "dc97461199300868b5aaff837afff25d60226840276b2d40bc54e10d8f561e0a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "918de6f85569ef02c90cafa37a0b1a9f40287346c6ac689dc0dd0945314eb31a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
