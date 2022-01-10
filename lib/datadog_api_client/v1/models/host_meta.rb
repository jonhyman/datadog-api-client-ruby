=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Metadata associated with your host.
  class HostMeta
    # whether the object has unparsed attributes
    attr_accessor :_unparsed

    # A list of Agent checks running on the host.
    attr_accessor :agent_checks

    # The Datadog Agent version.
    attr_accessor :agent_version

    # The number of cores.
    attr_accessor :cpu_cores

    # An array of Mac versions.
    attr_accessor :fbsd_v

    # JSON string containing system information.
    attr_accessor :gohai

    attr_accessor :install_method

    # An array of Mac versions.
    attr_accessor :mac_v

    # The machine architecture.
    attr_accessor :machine

    # Array of Unix versions.
    attr_accessor :nix_v

    # The OS platform.
    attr_accessor :platform

    # The processor.
    attr_accessor :processor

    # The Python version.
    attr_accessor :python_v

    # The socket fqdn.
    attr_accessor :socket_fqdn

    # The socket hostname.
    attr_accessor :socket_hostname

    # An array of Windows versions.
    attr_accessor :win_v

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agent_checks' => :'agent_checks',
        :'agent_version' => :'agent_version',
        :'cpu_cores' => :'cpuCores',
        :'fbsd_v' => :'fbsdV',
        :'gohai' => :'gohai',
        :'install_method' => :'install_method',
        :'mac_v' => :'macV',
        :'machine' => :'machine',
        :'nix_v' => :'nixV',
        :'platform' => :'platform',
        :'processor' => :'processor',
        :'python_v' => :'pythonV',
        :'socket_fqdn' => :'socket-fqdn',
        :'socket_hostname' => :'socket-hostname',
        :'win_v' => :'winV'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'agent_checks' => :'Array<Array>',
        :'agent_version' => :'String',
        :'cpu_cores' => :'Integer',
        :'fbsd_v' => :'Array<String>',
        :'gohai' => :'String',
        :'install_method' => :'HostMetaInstallMethod',
        :'mac_v' => :'Array<String>',
        :'machine' => :'String',
        :'nix_v' => :'Array<String>',
        :'platform' => :'String',
        :'processor' => :'String',
        :'python_v' => :'String',
        :'socket_fqdn' => :'String',
        :'socket_hostname' => :'String',
        :'win_v' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::HostMeta` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::HostMeta`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agent_checks')
        if (value = attributes[:'agent_checks']).is_a?(Array)
          self.agent_checks = value
        end
      end

      if attributes.key?(:'agent_version')
        self.agent_version = attributes[:'agent_version']
      end

      if attributes.key?(:'cpu_cores')
        self.cpu_cores = attributes[:'cpu_cores']
      end

      if attributes.key?(:'fbsd_v')
        if (value = attributes[:'fbsd_v']).is_a?(Array)
          self.fbsd_v = value
        end
      end

      if attributes.key?(:'gohai')
        self.gohai = attributes[:'gohai']
      end

      if attributes.key?(:'install_method')
        self.install_method = attributes[:'install_method']
      end

      if attributes.key?(:'mac_v')
        if (value = attributes[:'mac_v']).is_a?(Array)
          self.mac_v = value
        end
      end

      if attributes.key?(:'machine')
        self.machine = attributes[:'machine']
      end

      if attributes.key?(:'nix_v')
        if (value = attributes[:'nix_v']).is_a?(Array)
          self.nix_v = value
        end
      end

      if attributes.key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.key?(:'processor')
        self.processor = attributes[:'processor']
      end

      if attributes.key?(:'python_v')
        self.python_v = attributes[:'python_v']
      end

      if attributes.key?(:'socket_fqdn')
        self.socket_fqdn = attributes[:'socket_fqdn']
      end

      if attributes.key?(:'socket_hostname')
        self.socket_hostname = attributes[:'socket_hostname']
      end

      if attributes.key?(:'win_v')
        if (value = attributes[:'win_v']).is_a?(Array)
          self.win_v = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agent_checks == o.agent_checks &&
          agent_version == o.agent_version &&
          cpu_cores == o.cpu_cores &&
          fbsd_v == o.fbsd_v &&
          gohai == o.gohai &&
          install_method == o.install_method &&
          mac_v == o.mac_v &&
          machine == o.machine &&
          nix_v == o.nix_v &&
          platform == o.platform &&
          processor == o.processor &&
          python_v == o.python_v &&
          socket_fqdn == o.socket_fqdn &&
          socket_hostname == o.socket_hostname &&
          win_v == o.win_v
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [agent_checks, agent_version, cpu_cores, fbsd_v, gohai, install_method, mac_v, machine, nix_v, platform, processor, python_v, socket_fqdn, socket_hostname, win_v].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
