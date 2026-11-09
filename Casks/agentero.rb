cask "agentero" do
  version "0.15.4"

  on_macos do
    on_arm do
      sha256 "0d5e2d9b0b92cf4dd36fa652931d8d9f8bc547f8dc4cbe7ee083433608a6aa28"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "d570c1ce9cc119a4c934eb02b996d8ad8385e227cab8ebbf9c980a58e731e448"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "2613634cc377391950b4bcf47b435d9eff90cca8a15607996d8e8fe53ac24427"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
