cask "agentero" do
  version "0.9.2"

  on_macos do
    on_arm do
      sha256 "b7504342c21c3886e60194b6acf1325466aac9516397168a634593ea7426090c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "164c85399d0b6b1be38999aa6c0af5dbaac65ac7f1949494150dc8d27c04ae77"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "e4073df13edacedfa7f2b7a100b29cfcd359f8aa32f2921e17c8c557dfe50556"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
