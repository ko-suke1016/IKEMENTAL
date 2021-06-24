require "rack/user_agent/result"

module Rack
  class UserAgent
    module Checker
      include Result

      def from_pc?
        device_type == :pc
      end

      def from_smartphone?
        device_type == :smartphone
      end

      def from_mobilephone?
        device_type == :mobilephone
      end

      def from_appliance?
        device_type == :appliance
      end

      def from_crawler?
        device_type == :crawler
      end
    end
  end
end
