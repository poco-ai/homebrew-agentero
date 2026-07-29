cask "agentero" do
  version "0.3.1"

  on_macos do
    on_arm do
      sha256 "c1ff66294b6c4d1e4c5f7dbd1338cd108500d4a5e501911b1b390081def73e55"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "5f06ac09ac38f0dd77668084ba019d9543a2e4bb003d0564721a4e2fed3c7bbf"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "e7d48101b435acce168ed2978f22374360ffae52550727b84daaa3b7ae1329ec"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
