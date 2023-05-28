class ApplicationController < ActionController::Base
  CONTENTFUL_EXCEPTIONS = [Contentful::Error, HTTP::ConnectionError]

  private

  def handle_exception
    return nil unless block_given?

    yield
    rescue *CONTENTFUL_EXCEPTIONS => e
      log_errors(e)
      nil
  end

  def log_errors exception
    Rails.logger.error exception.message
    flash[:error] = 'Something went wrong while fetching data from contentful!'
  end
end
