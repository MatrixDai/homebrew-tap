class SnmpTui < Formula
  desc "Interactive TUI tool for SNMP MIB exploration and device inspection"
  homepage "https://github.com/MatrixDai/snmp-tui"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MatrixDai/snmp-tui/releases/download/v#{version}/snmp-tui-macos-intel.tar.gz"
      sha256 "c5f61a0409fa3532df04f67bf7d66609f2137029d4cfbf7b5ff486a0f8c56212"
    end

    on_arm do
      url "https://github.com/MatrixDai/snmp-tui/releases/download/v#{version}/snmp-tui-macos-apple-silicon.tar.gz"
      sha256 "5bcf62c75f0ff3db487e85bff58c24fb91051ef59f0058866626f3c9766d7503"
    end
  end

  def install
    bin.install "snmp-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snmp-tui --version")
  end
end
