require 'killbill/plugin'

module Killbill
  module Plugin
    class Payment < PluginBase

      class OperationUnsupportedByGatewayError < NotImplementedError
      end

      def charge(external_account_key, killbill_payment_id, amount_in_cents, options = {})
        raise OperationUnsupportedByGatewayError
      end

      def refund(external_account_key, killbill_payment_id, amount_in_cents, options = {})
        raise OperationUnsupportedByGatewayError
      end

      def get_payment_info(killbill_payment_id, options = {})
        raise OperationUnsupportedByGatewayError
      end

      def add_payment_method(external_account_key, payment_method, options = {})
        raise OperationUnsupportedByGatewayError
      end

      def delete_payment_method(external_account_key, external_payment_method_id, options = {})
        raise OperationUnsupportedByGatewayError
      end

      def update_payment_method(external_account_key, payment_method, options = {})
        raise OperationUnsupportedByGatewayError
      end

      def set_default_payment_method(external_account_key, payment_method, options = {})
        raise OperationUnsupportedByGatewayError
      end

      def create_account(killbill_account, options = {})
        raise OperationUnsupportedByGatewayError
      end

    end
  end
end