cask "agentero" do
  version "0.5.0"

  on_macos do
    on_arm do
      sha256 "6b9581c00c706c30fc54771e9080af9b554ba05b40e7f418d99e3701b801dbfa"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "88a9d6bb576f7fb2996eb7f4e75861e9442fa876ebd85a19c546d7764bfb8b6f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "974bb41184cc0154cae67cc5ea465cbb0c4857462e258998827f7ab5e3d8b8d5"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
