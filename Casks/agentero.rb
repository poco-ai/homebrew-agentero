cask "agentero" do
  version "0.12.1"

  on_macos do
    on_arm do
      sha256 "c4b8740b5d043f0207f13c1500fdf6a2a7943f4c69261e96324487dc90fe0eec"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "aeadec1999a503661fcfc698fa56a15ab0c017b64401babf3cf2bbf1163f3ef9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "f421b9a471d3963c910356402e983b649c5c0fb205a2e8bcb833d1839ba703c9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
