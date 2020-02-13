# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.felinesfancy.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  add contacts_path, changefreq: :never

  add cat_personality_test_index_path, changefreq: :monthly
  add new_cat_personality_test_path, changefreq: :monthly

  CatPersonality.find_each do |cat_personality|
    add cat_personality_test_path(cat_personality.catID), lastmod: cat_personality.updated_at, changefreq: :monthly
  end

  Article.find_each do |article|
    add article_path(article), lastmod: article.updated_at
  end

  Cat.find_each do |cat|
    add cat_path(cat), lastmod: cat.updated_at
  end
end
