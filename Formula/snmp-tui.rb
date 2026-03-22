class SnmpTui < Formula
  desc "Interactive TUI tool for SNMP MIB exploration and device inspection"
  homepage "https://github.com/MatrixDai/snmp-tui"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/MatrixDai/snmp-tui/releases/download/v#{version}/snmp-tui-macos-intel.tar.gz"
      sha256 "9e2c58c10260686858e21dd3c83f47bc4878f05a0d512e4dfbdc049385e7e7ab"
    end

    on_arm do
      url "https://github.com/MatrixDai/snmp-tui/releases/download/v#{version}/snmp-tui-macos-apple-silicon.tar.gz"
      sha256 "4f7df35a9d0ccd3fb231ef4a2104f0bc5e803f0a678f23d287b2d6468dbe9195"
    end
  end

  def install
    bin.install "snmp-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snmp-tui --version")
  end
end
