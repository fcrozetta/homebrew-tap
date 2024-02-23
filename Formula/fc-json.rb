# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class fcJson < Formula
  desc "Personal tools to make my life easier"
  homepage ""
  url "https://github.com/fcrozetta/toolkit/releases/download/1.0.9/toolkit.zip"
  sha256 "405bc333c00c650f9f2aec800a6e419759c16026acf3aa4737ee67199b1ff5f7"
  license "Apache-2.0"

  # depends_on "cmake" => :build
  # uses_from_macos "bzip2"
  # uses_from_macos "unzip"

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # bin.mkpath
    # system "unzip -u toolkit.zip", *std_configure_args
    bin.install "fc-json"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test toolkit`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "echo 'NO TEST'"
  end
end
