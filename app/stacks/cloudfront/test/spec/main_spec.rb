describe "main" do
  before(:all) do
    stack_path = File.expand_path("../..", __dir__) # the source of the stack to test is 2 levels up
    ts_root = File.expand_path("../../..", stack_path) # original Terraspace.root
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/cloudfront-harness
    terraspace.build_test_harness(
      name:    "cloudfront-harness",
      modules: "#{ts_root}/app/modules", # include all modules in folder
      stacks:  {cloudfront: stack_path},
      # override demo stack tfvars for testing
      config:  "#{stack_path}/test/spec/fixtures/config",
      tfvars:  {cloudfront: "#{stack_path}/test/spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("cloudfront")
  end
  after(:all) do
    terraspace.down("cloudfront")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    output_value = terraspace.output("cloudfront", "bucket_name")
    puts "output_value #{output_value}"
    # More useful helpers:
    # pp terraspace.state['resources']
    # pp terraspace.state_resource('random_pet.this')
    # pp terraspace.state_resource('module.bucket')
  end
end
