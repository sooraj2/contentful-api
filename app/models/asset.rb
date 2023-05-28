class Asset < Contentful::Asset
  def https_url
    image_url.sub %r{\A//}, 'https://'
  end
end
