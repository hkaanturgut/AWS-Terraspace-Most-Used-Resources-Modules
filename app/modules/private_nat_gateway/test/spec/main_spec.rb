describe "main" do
  before(:all) do
    mod_path = File.expand_path("../..", __dir__) # the source of the module to test is 2 levels up
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/private_nat_gateway-harness
    terraspace.build_test_harness(
      name: "private_nat_gateway-harness",
      modules: {private_nat_gateway: mod_path},
      # See: https://terraspace.cloud/docs/testing/test-harness/
      config: "spec/fixtures/config",
      tfvars: {private_nat_gateway: "spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("private_nat_gateway")
  end
  after(:all) do
    terraspace.down("private_nat_gateway")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    # output_value = terraspace.output("private_nat_gateway", "name")
    # expect(output_value).to include("some-value")
  end
end
