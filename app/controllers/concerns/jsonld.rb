module Jsonld
  extend ActiveSupport::Concern

  def json_ld(twitterTitle, twitterImage, publication_date, date_modified, twitterURL, twitterDescription)
    @twitterTitle = twitterTitle
    @twitterImage = twitterImage
    @publication_date = publication_date
    @date_modified = date_modified
    @twitterURL = 'https://www.felinesfancy.com' + twitterURL
    @twitterDescription = twitterDescription
  end

end
