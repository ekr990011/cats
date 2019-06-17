namespace :cats do
  task videos: :environment do
    require 'capybara'
    require 'capybara/dsl'

    class Trends
      include Capybara::DSL
      
      def initialize
        Capybara.register_driver :chrome do |app|
          Capybara::Selenium::Driver.new(app, browser: :chrome)
        end

        Capybara.register_driver :headless_chrome do |app|
          capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
            chromeOptions: {
              args: %w[headless enable-features=NetworkService,NetworkServiceInProcess]
            }
          )

          Capybara::Selenium::Driver.new app,
            browser: :chrome,
            desired_capabilities: capabilities
        end

        Capybara.default_driver = :headless_chrome
        Capybara.javascript_driver = :headless_chrome
      end
    end

    # require 'mechanize'
    # a = Mechanize.new
    # a.user_agent_alias = "Mac Safari 4"
    #
    # date_csv = Time.now - 2.days
    # date_csv_now = date_csv.to_s[0..9]
    # date_csv_1m = (date_csv - 30.days).to_s[0..9]
    #
    # csv = a.get("https://trends.google.com/trends/api/widgetdata/multiline/csv?req=%7B%22" +
    #   "time%22%3A%22" + date_csv_1m + "%20" + date_csv_now + "%22%2C%22" +
    #   "resolution%22%3A%22DAY%22%2C%22locale%22%3A%22en-US%22%2C%22" +
    #   "comparisonItem%22%3A%5B%7B%22geo%22%3A%7B%7D%2C%22complexKeywordsRestriction%22%3A%7B%22" +
    #   "keyword%22%3A%5B%7B%22type%22%3A%22ENTITY%22%2C%22value%22%3A%22%2Fm%2F0132vv%22%7D%5D%7D%7D%5D%2C%22" +
    #   "requestOptions%22%3A%7B%22property%22%3A%22%22%2C%22backend%22%3A%22IZG%22%2C%22" +
    #   "category%22%3A0%7D%7D&token=APP6_UEAAAAAXQPHmdEqYfjEWooz5vESlCqJ6CfmrNuK&tz=300")
    #
    # array = csv.body.split(",")
    #
    # puts array


    a = Capybara.visit("https://trends.google.com/trends/explore?date=today%201-m&q=%2Fm%2F0132vv")
    a.find_css('.line-chart div div div div table tbody tr:nth-child(30')


  end
end
