describe "main" do
  before(:all) do
    stack_path = File.expand_path("../..", __dir__) # the source of the stack to test is 2 levels up
    ts_root = File.expand_path("../../..", stack_path) # original Terraspace.root
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/s3_glacier_vault-harness
    terraspace.build_test_harness(
      name:    "s3_glacier_vault-harness",
      modules: "#{ts_root}/app/modules", # include all modules in folder
      stacks:  {s3_glacier_vault: stack_path},
      # override demo stack tfvars for testing
      config:  "#{stack_path}/test/spec/fixtures/config",
      tfvars:  {s3_glacier_vault: "#{stack_path}/test/spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("s3_glacier_vault")
  end
  after(:all) do
    terraspace.down("s3_glacier_vault")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    output_value = terraspace.output("s3_glacier_vault", "bucket_name")
    puts "output_value #{output_value}"
    # More useful helpers:
    # pp terraspace.state['resources']
    # pp terraspace.state_resource('random_pet.this')
    # pp terraspace.state_resource('module.bucket')
  end
end
