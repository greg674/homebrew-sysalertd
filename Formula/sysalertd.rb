class Sysalertd < Formula
    desc "Brew System Alerting"
    homepage "https://github.com/greg674/"
    url "https://github.com/greg674/sysalertd/releases/download/v25.0303.1/sysalertd-25.0303.1.tar.gz"
    sha256 "de7b051706528b853c4f30fe2c2ad42eb9f2cf20a957ae12b8aa16364b1d825d"
    version "25.0303.1"

    def install
        bin.install "sysalertd"
        ohai "Signing binary..."
        system "codesign", "--force", "--sign", "-", bin/"sysalertd"
    end

    def caveats
        <<~EOS
        To finish installation, add the following line to your .bashrc or .zshrc
 (nohup sysalertd > /dev/null 2>&1 &)

Then reopen your terminal app.
        EOS
    end
    end
