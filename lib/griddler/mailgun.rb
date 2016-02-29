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

    def recipient
      extract_address(@params[:recipient])
    end

    def delivered_to
      recipients(:delivered_to)
    end
  end
end

Griddler.adapter_registry.register(:mailgun, Griddler::Mailgun::Adapter)