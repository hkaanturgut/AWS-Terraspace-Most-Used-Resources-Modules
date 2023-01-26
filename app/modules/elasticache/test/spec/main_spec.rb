describe "main" do
  before(:all) do
    mod_path = File.expand_path("../..", __dir__) # the source of the module to test is 2 levels up
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/elasticache-harness
    terraspace.build_test_harness(
      name: "elasticache-harness",
      modules: {elasticache: mod_path},
      # See: https://terraspace.cloud/docs/testing/test-harness/
      config: "spec/fixtures/config",
      tfvars: {elasticache: "spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("elasticache")
  end
  after(:all) do
    terraspace.down("elasticache")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    # output_value = terraspace.output("elasticache", "name")
    # expect(output_value).to include("some-value")
  end
end
