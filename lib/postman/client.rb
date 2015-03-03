require "postman/client/version"
require "rest-client"
require "uri"

module Postman
  module Client
    class Dispatcher
      attr_reader :host

      def initialize(host:)
        raise 'Wrong host' unless host =~ /\A#{URI::regexp(['http', 'https'])}\z/
        @host = host
      end

      def send_mail(subject:, body:, emails:, slug:)
        send_message "api/send/mail", { :subject => subject, :body => body, :emails => emails, :slug => slug }
      end

      def send_sms(body:, phones:, slug:)
        send_message "api/send/sms", { :body => body, :phones => phones, :slug => slug}
      end

      private

      def send_message(path, data)
        RestClient.post "#{host}/#{path}", data, :content_type => :json, :accept => :json
      end
    end
  end
end
