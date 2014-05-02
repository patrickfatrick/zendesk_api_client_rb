require 'core/spec_helper'

describe ZendeskAPI::UserView, :delete_after do
  def valid_attributes
    {
      :title => "my test view",
      :conditions => {
        :all => [{ :field => "status", :operator => "is", :value => "open" }]
      }
    }
  end

  it_should_be_readable :user_views

  it_should_be_creatable
  it_should_be_updatable :conditions, {
    "any" => [],
    "all" => [{ "field" => "status", "operator" => "is", "value" => "solved" }]
  }
  it_should_be_deletable
end
