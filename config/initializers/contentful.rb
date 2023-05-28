require 'contentful'
require 'Asset'
require 'Recipe'

CONTENTFUL = Contentful::Client.new(
  space: ENV['CONTENTFUL_SCOPE'],
  access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
  dynamic_entries: :auto,
  raise_for_empty_fields: false,
  resource_mapping: {
    'Asset' => Asset
  },
  entry_mapping: {
    'recipe' => Recipe
  }
)
