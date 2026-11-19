cask "agentero" do
  version "0.17.0"

  on_macos do
    on_arm do
      sha256 "5df68e92445a0ef340b91c9399f08e2276e075ce6137b3ba17209c48fe7c85d8"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "7e13cf06da4e385a9aea2a6ccf2410e5c67b8b0d0788bdfb96befa2a55399f81"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "85ca36554fd69fcc7c5d6910367d963f64234e3fea218543874e72c98e098834"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
