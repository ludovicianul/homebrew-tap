# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timi < Formula
  desc "Timi is a command line application that allows you to chat with your git history."
  homepage "https://github.com/ludovicianul/timi"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.3/timi_macos_amd64_1.0.3.tar.gz"
        sha256 "ac7d9d7261c18496e464e3fbee6ad4f6a7be03a0aa5e1f9e2ee8d316a179c5c8"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.3/timi_macos_arm64_1.0.3.tar.gz"
        sha256 "473ee55070f19e99954651d5a23bbe0f4824243ad3d81c28d2b7f9290d89539f"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.3/timi_linux_amd64_1.0.3.tar.gz"
        sha256 "cab72ce6ac6e77fba5be875f0ad0d974afe165dc8ae8b2b76f00c78c53272c87"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.3/timi_linux_arm64_1.0.3.tar.gz"
        sha256 "363b67f52e1ac2f03a1378b5d9c1d31f2c316e0c7d99f7e53fb7590df8ee481a"
      end
  else
    odie "Please use the uberjar version: https://github.com/ludovicianul/timi/releases/download/timi-1.0.3/timi_uberjar_1.0.3.tar.gz"
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
