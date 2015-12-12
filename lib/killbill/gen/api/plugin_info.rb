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

      java_package 'org.killbill.billing.osgi.api'
      class PluginInfo

        include org.killbill.billing.osgi.api.PluginInfo

        attr_accessor :bundle_symbolic_name, :plugin_name, :version, :plugin_state, :services, :is_selected_for_start

        def initialize()
        end

        def to_java()
          # conversion for bundle_symbolic_name [type = java.lang.String]
          @bundle_symbolic_name = @bundle_symbolic_name.to_s unless @bundle_symbolic_name.nil?

          # conversion for plugin_name [type = java.lang.String]
          @plugin_name = @plugin_name.to_s unless @plugin_name.nil?

          # conversion for version [type = java.lang.String]
          @version = @version.to_s unless @version.nil?

          # conversion for plugin_state [type = org.killbill.billing.osgi.api.PluginState]
          @plugin_state = Java::org.killbill.billing.osgi.api.PluginState.value_of( @plugin_state.to_s ) unless @plugin_state.nil?

          # conversion for services [type = java.util.Set]
          tmp = java.util.TreeSet.new
          (@services || []).each do |m|
            # conversion for m [type = org.killbill.billing.osgi.api.PluginServiceInfo]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @services = tmp

          # conversion for is_selected_for_start [type = boolean]
          @is_selected_for_start = @is_selected_for_start.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_selected_for_start)
          self
        end

        def to_ruby(j_obj)
          # conversion for bundle_symbolic_name [type = java.lang.String]
          @bundle_symbolic_name = j_obj.bundle_symbolic_name

          # conversion for plugin_name [type = java.lang.String]
          @plugin_name = j_obj.plugin_name

          # conversion for version [type = java.lang.String]
          @version = j_obj.version

          # conversion for plugin_state [type = org.killbill.billing.osgi.api.PluginState]
          @plugin_state = j_obj.plugin_state
          @plugin_state = @plugin_state.to_s.to_sym unless @plugin_state.nil?

          # conversion for services [type = java.util.Set]
          @services = j_obj.services
          tmp = []
          (@services || []).each do |m|
            # conversion for m [type = org.killbill.billing.osgi.api.PluginServiceInfo]
            m = Killbill::Plugin::Model::PluginServiceInfo.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @services = tmp

          # conversion for is_selected_for_start [type = boolean]
          @is_selected_for_start = j_obj.is_selected_for_start
          if @is_selected_for_start.nil?
            @is_selected_for_start = false
          else
            tmp_bool = (@is_selected_for_start.java_kind_of? java.lang.Boolean) ? @is_selected_for_start.boolean_value : @is_selected_for_start
            @is_selected_for_start = tmp_bool ? true : false
          end
          self
        end

      end
    end
  end
end