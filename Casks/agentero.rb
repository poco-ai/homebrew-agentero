cask "agentero" do
  version "0.9.4"

  on_macos do
    on_arm do
      sha256 "ba1e97fefe8a8e3f96802de38b4854b13ad9a533b39f400b9f5e2d5bf9fc83f4"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "d308eb5283a27a1b4e75c4d03f4a619bedf4a478f0caf5e7e337ec8dc4233646"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "021fbdc44e162864fadaa107f5a5a7777b3e021a09c66f3681248d17a2fc8fa6"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
