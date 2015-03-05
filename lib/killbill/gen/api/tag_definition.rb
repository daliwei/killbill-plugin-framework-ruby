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

      java_package 'org.killbill.billing.util.tag'
      class TagDefinition

        include org.killbill.billing.util.tag.TagDefinition

        attr_accessor :id, :created_date, :updated_date, :name, :description, :is_control_tag, :applicable_object_types

        def initialize()
        end

        def to_java()
          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for name [type = java.lang.String]
          @name = @name.to_s unless @name.nil?

          # conversion for description [type = java.lang.String]
          @description = @description.to_s unless @description.nil?

          # conversion for is_control_tag [type = java.lang.Boolean]
          @is_control_tag = @is_control_tag.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_control_tag)

          # conversion for applicable_object_types [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@applicable_object_types || []).each do |m|
            # conversion for m [type = org.killbill.billing.ObjectType]
            m = Java::JavaLang::Enum.value_of( org.killbill.billing.ObjectType.java_class, m.to_s ) unless m.nil?
            tmp.add(m)
          end
          @applicable_object_types = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for name [type = java.lang.String]
          @name = j_obj.name

          # conversion for description [type = java.lang.String]
          @description = j_obj.description

          # conversion for is_control_tag [type = java.lang.Boolean]
          @is_control_tag = j_obj.is_control_tag
          if @is_control_tag.nil?
            @is_control_tag = false
          else
            tmp_bool = (@is_control_tag.java_kind_of? java.lang.Boolean) ? @is_control_tag.boolean_value : @is_control_tag
            @is_control_tag = tmp_bool ? true : false
          end

          # conversion for applicable_object_types [type = java.util.List]
          @applicable_object_types = j_obj.applicable_object_types
          tmp = []
          (@applicable_object_types || []).each do |m|
            # conversion for m [type = org.killbill.billing.ObjectType]
            m = m.to_s.to_sym unless m.nil?
            tmp << m
          end
          @applicable_object_types = tmp
          self
        end

      end
    end
  end
end
