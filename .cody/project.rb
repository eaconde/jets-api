# For methods, refer to the properties of the CloudFormation CodeBuild::Project https://amzn.to/2UTeNlr
# For convenience methods, refer to the source https://github.com/tongueroo/cody/blob/master/lib/cody/dsl/project.rb
# Docs:
#
# * https://cody.run/docs/dsl/project/
# * https://cody.run/docs/docs/dsl/helpers/
#

# name("example-project-name") # recommend leaving unset and codebuild will use a conventional name
github_url("https://github.com/eaconde/jets-api.git")
linux_image("timbru31/ruby-node:2.5")
environment_variables(
  JETS_ENV: "test",
  # API_KEY: "ssm:/codebuild/demo/api_key" # Example of ssm parameter
)
