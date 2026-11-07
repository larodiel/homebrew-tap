class Lrdmem < Formula
  include Language::Python::Virtualenv

  desc "Shared git-backed memory store for AI coding agents"
  homepage "https://github.com/larodiel/lrdmem"
  url "https://files.pythonhosted.org/packages/54/99/5b8f0c60f26fedb0ec79e63d113d5adab2720b193ad95738f941260c2708/lrdmem-0.2.0.tar.gz"
  sha256 "5ec8951765ec5bbb3a82e09c93576f8dd953598f51ecd44045391bbfd7b5f881"
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
