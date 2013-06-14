###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Api

      java_package 'com.ning.billing.util.api'
      class AuditUserApi

        include com.ning.billing.util.api.AuditUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::com.ning.billing.util.audit.AuditLogsForAccount getAuditLogsForAccount(Java::java.util.UUID, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs_for_account(accountId, auditLevel, context)
          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_audit_logs_for_account(accountId, auditLevel, context)
          # conversion for res [type = com.ning.billing.util.audit.AuditLogsForAccount]
          res = Killbill::Plugin::Model::AuditLogsForAccount.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.audit.AuditLogsForBundles getAuditLogsForBundle(Java::java.util.UUID, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs_for_bundle(bundleId, auditLevel, context)
          # conversion for bundleId [type = java.util.UUID]
          bundleId = java.util.UUID.fromString(bundleId.to_s) unless bundleId.nil?
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_audit_logs_for_bundle(bundleId, auditLevel, context)
            # conversion for res [type = com.ning.billing.util.audit.AuditLogsForBundles]
            res = Killbill::Plugin::Model::AuditLogsForBundles.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.entitlement.api.timeline.EntitlementRepairException => e
            raise Killbill::Plugin::Model::EntitlementRepairException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.util.audit.AuditLogsForBundles getAuditLogsForBundles(Java::java.util.List, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs_for_bundles(bundles, auditLevel, context)
          # conversion for bundles [type = java.util.List]
          tmp = java.util.ArrayList.new
          (bundles || []).each do |m|
            # conversion for m [type = com.ning.billing.entitlement.api.timeline.BundleTimeline]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          bundles = tmp
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_audit_logs_for_bundles(bundles, auditLevel, context)
          # conversion for res [type = com.ning.billing.util.audit.AuditLogsForBundles]
          res = Killbill::Plugin::Model::AuditLogsForBundles.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.audit.AuditLogsForInvoicePayments getAuditLogsForInvoicePayments(Java::java.util.List, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs_for_invoice_payments(invoicePayments, auditLevel, context)
          # conversion for invoicePayments [type = java.util.List]
          tmp = java.util.ArrayList.new
          (invoicePayments || []).each do |m|
            # conversion for m [type = com.ning.billing.invoice.api.InvoicePayment]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          invoicePayments = tmp
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_audit_logs_for_invoice_payments(invoicePayments, auditLevel, context)
          # conversion for res [type = com.ning.billing.util.audit.AuditLogsForInvoicePayments]
          res = Killbill::Plugin::Model::AuditLogsForInvoicePayments.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.audit.AuditLogsForRefunds getAuditLogsForRefunds(Java::java.util.List, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs_for_refunds(refunds, auditLevel, context)
          # conversion for refunds [type = java.util.List]
          tmp = java.util.ArrayList.new
          (refunds || []).each do |m|
            # conversion for m [type = com.ning.billing.payment.api.Refund]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          refunds = tmp
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_audit_logs_for_refunds(refunds, auditLevel, context)
          # conversion for res [type = com.ning.billing.util.audit.AuditLogsForRefunds]
          res = Killbill::Plugin::Model::AuditLogsForRefunds.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.audit.AuditLogsForPayments getAuditLogsForPayments(Java::java.util.List, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs_for_payments(payments, auditLevel, context)
          # conversion for payments [type = java.util.List]
          tmp = java.util.ArrayList.new
          (payments || []).each do |m|
            # conversion for m [type = com.ning.billing.payment.api.Payment]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          payments = tmp
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_audit_logs_for_payments(payments, auditLevel, context)
          # conversion for res [type = com.ning.billing.util.audit.AuditLogsForPayments]
          res = Killbill::Plugin::Model::AuditLogsForPayments.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.audit.AuditLogsForInvoices getAuditLogsForInvoices(Java::java.util.List, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs_for_invoices(invoices, auditLevel, context)
          # conversion for invoices [type = java.util.List]
          tmp = java.util.ArrayList.new
          (invoices || []).each do |m|
            # conversion for m [type = com.ning.billing.invoice.api.Invoice]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          invoices = tmp
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_audit_logs_for_invoices(invoices, auditLevel, context)
          # conversion for res [type = com.ning.billing.util.audit.AuditLogsForInvoices]
          res = Killbill::Plugin::Model::AuditLogsForInvoices.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::java.util.List getAuditLogs(Java::java.util.UUID, Java::com.ning.billing.ObjectType, Java::com.ning.billing.util.api.AuditLevel, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_audit_logs(objectId, objectType, auditLevel, context)
          # conversion for objectId [type = java.util.UUID]
          objectId = java.util.UUID.fromString(objectId.to_s) unless objectId.nil?
          # conversion for objectType [type = com.ning.billing.ObjectType]
          objectType = Java::com.ning.billing.ObjectType.value_of("#{objectType.to_s}") unless objectType.nil?
          # conversion for auditLevel [type = com.ning.billing.util.api.AuditLevel]
          auditLevel = Java::com.ning.billing.util.api.AuditLevel.value_of("#{auditLevel.to_s}") unless auditLevel.nil?
          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_audit_logs(objectId, objectType, auditLevel, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = com.ning.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end
      end
    end
  end
end