cask "agentero" do
  version "0.5.1"

  on_macos do
    on_arm do
      sha256 "3b4d61cdf7b0fffc72818db787fbc4856c3b8f293c9e3df8ffbc1aa63a72ad2c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "4603caeb7f5bf3ee6089bb8e1b8a0ad526dc2cd7d281c82fbb8807ac5e49f7e8"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "2dfe773103e55de3932ce211cd17dcd80902360c350fdd13f8621db8598beb4c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
