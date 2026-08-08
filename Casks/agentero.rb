cask "agentero" do
  version "0.5.2"

  on_macos do
    on_arm do
      sha256 "810a35dfe04bc3b895b68079363bae83f5da3e5aa6ca689e082c226be13a05fe"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "b590130ef4c72d277d5ca94f40e64881e7a699a42aaa5a5c6bd99aa31ba7e2bb"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "c14471548509ce5270d212e28343d540dc705bcb2c1bd68597dd05265bb1ea13"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
