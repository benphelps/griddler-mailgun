require 'griddler'
require 'griddler/mailgun/version'
require 'griddler/mailgun/adapter'

module Griddler
  module Mailgun
  end

  class Email
    def content_id_map
      @params[:content_id_map]
    end
  end
end

Griddler.adapter_registry.register(:mailgun, Griddler::Mailgun::Adapter)