#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      class PlanChangeResult


        attr_accessor :new_price_list, :policy, :alignment

        def initialize()
        end

        def to_java()
          # conversion for new_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @new_price_list = @new_price_list.to_java unless @new_price_list.nil?

          # conversion for policy [type = org.killbill.billing.catalog.api.BillingActionPolicy]
          @policy = Java::JavaLang::Enum.value_of( org.killbill.billing.catalog.api.BillingActionPolicy.java_class, @policy.to_s ) unless @policy.nil?

          # conversion for alignment [type = org.killbill.billing.catalog.api.PlanAlignmentChange]
          @alignment = Java::JavaLang::Enum.value_of( org.killbill.billing.catalog.api.PlanAlignmentChange.java_class, @alignment.to_s ) unless @alignment.nil?
          Java::org.killbill.billing.catalog.api.PlanChangeResult.new(@new_price_list, @policy, @alignment)
        end

        def to_ruby(j_obj)
          # conversion for new_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @new_price_list = j_obj.new_price_list
          @new_price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@new_price_list) unless @new_price_list.nil?

          # conversion for policy [type = org.killbill.billing.catalog.api.BillingActionPolicy]
          @policy = j_obj.policy
          @policy = @policy.to_s.to_sym unless @policy.nil?

          # conversion for alignment [type = org.killbill.billing.catalog.api.PlanAlignmentChange]
          @alignment = j_obj.alignment
          @alignment = @alignment.to_s.to_sym unless @alignment.nil?
          self
        end

      end
    end
  end
end
