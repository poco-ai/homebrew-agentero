cask "agentero" do
  version "0.15.0"

  on_macos do
    on_arm do
      sha256 "815e7d5d2c426536202aca34173c569a3d43bcf29d1d639cd9397eabdd59b135"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "a49fc2498ee075108a52f0f237141294647f212caa33eb21eb109e8593c93ec2"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "59d9b960478f270d91f075ef04a788da5d99ab2a518dde4e727e95f70da41ea7"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
