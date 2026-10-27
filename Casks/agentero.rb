cask "agentero" do
  version "0.14.0"

  on_macos do
    on_arm do
      sha256 "e0e5a7c329c60ea296f6138deb2802666d5a5bd25121ec3957e33dad2ecf7020"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "88199d2be00cc5aa8f9f9e835aa25102c1f4f0abcccc4c29571a7a8f3d7b7ef2"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "4086ce5089250c98a813cab2d389a3ade58968148bb2401b6041f5b06ee39fab"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
