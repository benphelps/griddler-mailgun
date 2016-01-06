require 'griddler'
require 'griddler/mailgun/version'
require 'griddler/mailgun/adapter'

module Griddler
  module Mailgun
  end

  class Email
    def recipient
      extract_address(@params[:recipient])
    end
  end
end

Griddler.adapter_registry.register(:mailgun, Griddler::Mailgun::Adapter)