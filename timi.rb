# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timi < Formula
  desc "Timi is a blazing-fast, local-first command-line tool to track how you spend your time."
  homepage "https://github.com/ludovicianul/timi"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.0/timi_macos_amd64_1.0.0.tar.gz"
        sha256 "efa8f1646a81822d18a6ba6b5d3014e61abb95d6710386117e459350f34802af"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.0/timi_macos_arm64_1.0.0.tar.gz"
        sha256 "5395d9c668eca15b323f62b27fb3e8243ee5e0d44892a4510d54701a21c76d30"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.0/timi_linux_amd64_1.0.0.tar.gz"
        sha256 "11fc97a0430f3228776e1e0d3ed7c4cf065d4a0220b13866596e5600be5c76bf"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.0/timi_linux_arm64_1.0.0.tar.gz"
        sha256 "4ad1850a45a88598405c0afd3744a7e7d1c918fad1d6e415013e4febc1728ce4"
      end
  else
    odie "Please use the uberjar version: https://github.com/ludovicianul/timi/releases/download/timi-1.0.0/timi_uberjar_1.0.0.tar.gz"
  end

  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'timi'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test timi`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
