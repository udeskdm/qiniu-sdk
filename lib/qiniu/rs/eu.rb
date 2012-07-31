# -*- encoding: utf-8 -*-

module Qiniu
  module RS
    module EU
      class << self
        include Utils

        def set_watermark(customer_id, options = {})
          Auth.request Config.settings[:pub_host] + '/set', options.merge({:customer => customer_id})
        end

        def get_watermark(customer_id)
          Auth.request Config.settings[:pub_host] + '/get', {:customer => customer_id}
        end

      end
    end
  end
end

