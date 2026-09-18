cask "agentero" do
  version "0.11.1"

  on_macos do
    on_arm do
      sha256 "e8daf903733b210a4bc8af639c2c5fde6f8bdc391368199af12e4d30ec82d211"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "a2198f1bef413073f4a72abeea677845ad4451a9af13c7e8be862c5dab848d71"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "062a008b36e06116a4164e17586a4b05c28f2c7e22c919c50c02be03e0771686"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
