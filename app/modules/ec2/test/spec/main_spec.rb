describe "main" do
  before(:all) do
    mod_path = File.expand_path("../..", __dir__) # the source of the module to test is 2 levels up
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/ec2-harness
    terraspace.build_test_harness(
      name: "ec2-harness",
      modules: {ec2: mod_path},
      # See: https://terraspace.cloud/docs/testing/test-harness/
      config: "spec/fixtures/config",
      tfvars: {ec2: "spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("ec2")
  end
  after(:all) do
    terraspace.down("ec2")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    # output_value = terraspace.output("ec2", "name")
    # expect(output_value).to include("some-value")
  end
end
