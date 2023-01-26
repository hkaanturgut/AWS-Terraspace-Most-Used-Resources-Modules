describe "main" do
  before(:all) do
    mod_path = File.expand_path("../..", __dir__) # the source of the module to test is 2 levels up
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/eks_cluster-harness
    terraspace.build_test_harness(
      name: "eks_cluster-harness",
      modules: {eks_cluster: mod_path},
      # See: https://terraspace.cloud/docs/testing/test-harness/
      config: "spec/fixtures/config",
      tfvars: {eks_cluster: "spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("eks_cluster")
  end
  after(:all) do
    terraspace.down("eks_cluster")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    # output_value = terraspace.output("eks_cluster", "name")
    # expect(output_value).to include("some-value")
  end
end
