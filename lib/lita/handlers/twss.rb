require "lita"
require "twss"

module Lita
  module Handlers
    class Twss < Handler
      route(//, :twss, help: { "It's too big" => "That's what she said!" })

      def twss(response)
        response.reply("That's what she said!") if TWSS(response.message.body)
      end
    end

    Lita.register_handler(Twss)
  end
end
