cask "agentero" do
  version "0.10.0"

  on_macos do
    on_arm do
      sha256 "35a6186333d9736690a0d4efe72f2005a916f7d8cd3207710b50251ff26ad80c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "5587e0880f2ef5fc32077576ec954689dbfc061721c364bf4ca70cba38e9da76"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "a23359d431fe43b40703d35010265a9d2035442c093172a961ceb4def1372702"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
