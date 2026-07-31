cask "agentero" do
  version "0.3.3"

  on_macos do
    on_arm do
      sha256 "379a66e4818e11099640e48451ebfde9130deaff701c0bc988aaf58a350b2ed2"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "46023bfad7c927e9327a4da55a72090c6103cbd960c337be99e649e6f20157ed"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "1d4ef0b8b23264ff584d60e15470dbe36caa6135e773d5331227b20ea43f1527"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
