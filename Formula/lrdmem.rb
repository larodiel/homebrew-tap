class Lrdmem < Formula
  include Language::Python::Virtualenv

  desc "Shared git-backed memory store for AI coding agents"
  homepage "https://github.com/larodiel/lrdmem"
  url "https://files.pythonhosted.org/packages/87/e8/f1261c931b2443a1dd1b9318dc50fea27a24bbd785da6951a42fe2abe1d5/lrdmem-0.1.0.tar.gz"
  sha256 "0af076b45586a566b4fb0b38bc0b14bac79537c7579cc4203645997f52e39f71"
  license "MIT"

  depends_on "python@3.13"

  # No resources: lrdmem has no runtime deps. pip_install builds the sdist with build isolation
  # (default), so pip fetches setuptools itself; no setuptools resource or depends_on is needed.
  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lrdmem --version")
  end
end
