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
    module Api

      java_package 'org.killbill.billing.osgi.api'
      class PluginsInfoApi

        include org.killbill.billing.osgi.api.PluginsInfoApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.lang.Iterable getPluginsInfo()'
        def get_plugins_info()
        res = @real_java_api.get_plugins_info()
        # conversion for res [type = java.lang.Iterable]
        tmp = []
        (res.nil? ? [] : res.iterator).each do |m|
          # conversion for m [type = org.killbill.billing.osgi.api.PluginInfo]
          m = Killbill::Plugin::Model::PluginInfo.new.to_ruby(m) unless m.nil?
          tmp << m
        end
        res = tmp
        return res
      end

      java_signature 'Java::void notifyOfStateChanged(Java::org.killbill.billing.osgi.api.PluginStateChange, Java::java.lang.String, Java::java.lang.String, Java::java.lang.String, Java::org.killbill.billing.osgi.api.config.PluginLanguage)'
      def notify_of_state_changed(newState, pluginKey, pluginName, pluginVersion, pluginLanguage)

        # conversion for newState [type = org.killbill.billing.osgi.api.PluginStateChange]
        newState = Java::org.killbill.billing.osgi.api.PluginStateChange.value_of( newState.to_s ) unless newState.nil?

        # conversion for pluginKey [type = java.lang.String]
        pluginKey = pluginKey.to_s unless pluginKey.nil?

        # conversion for pluginName [type = java.lang.String]
        pluginName = pluginName.to_s unless pluginName.nil?

        # conversion for pluginVersion [type = java.lang.String]
        pluginVersion = pluginVersion.to_s unless pluginVersion.nil?

        # conversion for pluginLanguage [type = org.killbill.billing.osgi.api.config.PluginLanguage]
        pluginLanguage = Java::org.killbill.billing.osgi.api.config.PluginLanguage.value_of( pluginLanguage.to_s ) unless pluginLanguage.nil?
        @real_java_api.notify_of_state_changed(newState, pluginKey, pluginName, pluginVersion, pluginLanguage)
      end
    end
  end
end
end
