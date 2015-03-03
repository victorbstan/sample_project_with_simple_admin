require "demo_extension.rb" # if you have en extension you want to add

# Sample setup for SimpleAdmin
SimpleAdmin.setup do |setup|

  # Authentication
  setup.config_username = "admin"
  setup.config_password = "bob"

  # Setup

  # Name to appear in the admin interface
  setup.config_site_name = "My Site Name"
  # Models you don't want to appear in the admin interface
  setup.config_model_blacklist = []
  # Columns you don't want to see in the admin interface
  setup.config_visible_columns_blacklist = ["created_at", "updated_at"]
  # Columns you don't want to be able to edit
  setup.config_editable_columns_blacklist = ["id", "created_at", "updated_at", "post_id"]
  # Models you do want to be able to create new entries for
  setup.config_creatable_models_whitelist = ["Post"]
  # Use primarily for join tables or belongs to many associations
  setup.config_editable_associations_whitelist = {
    # "Model" => [:association]
    # Example: "Question" => [:groups]
    "Comment" => ["post"]
  }
  # Extensions accessible from the admin interface
  # Place your extension in your `lib` folder (recommended, not required)
  # Don't forget to require your extension at the top of this file
  # Example: require "demo_extension.rb"
  setup.config_extensions = [
    # Example: DemoExtension
    DemoExtension
  ]
end