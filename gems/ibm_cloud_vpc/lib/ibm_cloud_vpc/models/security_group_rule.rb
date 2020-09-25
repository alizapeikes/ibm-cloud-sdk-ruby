=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class SecurityGroupRule
    # The direction of traffic to enforce, either `inbound` or `outbound`.
    attr_accessor :direction

    # The URL for this security group rule
    attr_accessor :href

    # The unique identifier for this security group rule
    attr_accessor :id

    # The IP version to enforce. The format of `remote.address` or `remote.cidr_block` must match this field, if they are used. Alternatively, if `remote` references a security group, then this rule only applies to IP addresses (network interfaces) in that group matching this IP version.
    attr_accessor :ip_version

    # The protocol to enforce.
    attr_accessor :protocol

    # The IP addresses or security groups from which this rule allows traffic (or to which, for outbound rules). Can be specified as an IP address, a CIDR block, or a security group. A CIDR block of `0.0.0.0/0` allows traffic from any source (or to any source, for outbound rules).
    attr_accessor :remote

    # The ICMP traffic code to allow
    attr_accessor :code

    # The ICMP traffic type to allow
    attr_accessor :type

    # The inclusive upper bound of TCP/UDP port range
    attr_accessor :port_max

    # The inclusive lower bound of TCP/UDP port range
    attr_accessor :port_min

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'direction' => :'direction',
        :'href' => :'href',
        :'id' => :'id',
        :'ip_version' => :'ip_version',
        :'protocol' => :'protocol',
        :'remote' => :'remote',
        :'code' => :'code',
        :'type' => :'type',
        :'port_max' => :'port_max',
        :'port_min' => :'port_min'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'direction' => :'String',
        :'href' => :'String',
        :'id' => :'String',
        :'ip_version' => :'String',
        :'protocol' => :'String',
        :'remote' => :'OneOfIPCIDRSecurityGroupReference',
        :'code' => :'Integer',
        :'type' => :'Integer',
        :'port_max' => :'Integer',
        :'port_min' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in oneOf (OpenAPI v3)
    def self.openapi_one_of
      [
      :'Object',
      :'SecurityGroupRuleProtocolICMP',
      :'SecurityGroupRuleProtocolTCPUDP'
      ]
    end

    # discriminator's property name in OpenAPI v3
    def self.openapi_discriminator_name
      :'protocol'
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::SecurityGroupRule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::SecurityGroupRule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'ip_version')
        self.ip_version = attributes[:'ip_version']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'remote')
        self.remote = attributes[:'remote']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'port_max')
        self.port_max = attributes[:'port_max']
      end

      if attributes.key?(:'port_min')
        self.port_min = attributes[:'port_min']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      if @href.nil?
        invalid_properties.push('invalid value for "href", href cannot be nil.')
      end

      pattern = Regexp.new(/^http(s)?:\/\/([^\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      if @href !~ pattern
        invalid_properties.push("invalid value for \"href\", must conform to the pattern #{pattern}.")
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 64
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 64.')
      end

      if @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^[-0-9a-z_]+$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if @remote.nil?
        invalid_properties.push('invalid value for "remote", remote cannot be nil.')
      end

      if !@code.nil? && @code > 255
        invalid_properties.push('invalid value for "code", must be smaller than or equal to 255.')
      end

      if !@code.nil? && @code < 0
        invalid_properties.push('invalid value for "code", must be greater than or equal to 0.')
      end

      if !@type.nil? && @type > 254
        invalid_properties.push('invalid value for "type", must be smaller than or equal to 254.')
      end

      if !@type.nil? && @type < 0
        invalid_properties.push('invalid value for "type", must be greater than or equal to 0.')
      end

      if !@port_max.nil? && @port_max > 65535
        invalid_properties.push('invalid value for "port_max", must be smaller than or equal to 65535.')
      end

      if !@port_max.nil? && @port_max < 1
        invalid_properties.push('invalid value for "port_max", must be greater than or equal to 1.')
      end

      if !@port_min.nil? && @port_min > 65535
        invalid_properties.push('invalid value for "port_min", must be smaller than or equal to 65535.')
      end

      if !@port_min.nil? && @port_min < 1
        invalid_properties.push('invalid value for "port_min", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @direction.nil?
      direction_validator = EnumAttributeValidator.new('String', ["inbound", "outbound"])
      return false unless direction_validator.valid?(@direction)
      return false if @href.nil?
      return false if @href !~ Regexp.new(/^http(s)?:\/\/([^\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      return false if @id.nil?
      return false if @id.to_s.length > 64
      return false if @id.to_s.length < 1
      return false if @id !~ Regexp.new(/^[-0-9a-z_]+$/)
      ip_version_validator = EnumAttributeValidator.new('String', ["ipv4"])
      return false unless ip_version_validator.valid?(@ip_version)
      protocol_validator = EnumAttributeValidator.new('String', ["all", "icmp", "tcp", "udp"])
      return false unless protocol_validator.valid?(@protocol)
      return false if @remote.nil?
      return false if !@code.nil? && @code > 255
      return false if !@code.nil? && @code < 0
      return false if !@type.nil? && @type > 254
      return false if !@type.nil? && @type < 0
      return false if !@port_max.nil? && @port_max > 65535
      return false if !@port_max.nil? && @port_max < 1
      return false if !@port_min.nil? && @port_min > 65535
      return false if !@port_min.nil? && @port_min < 1
      _one_of_found = false
      self.class.openapi_one_of.each do |_class|
        _one_of = IbmCloudVpc.const_get(_class).build_from_hash(self.to_hash)
        if _one_of.valid?
          if _one_of_found
            return false
          else
            _one_of_found = true
          end
        end
      end

      if !_one_of_found
        return false
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ["inbound", "outbound"])
      unless validator.valid?(direction)
        fail ArgumentError, "invalid value for \"direction\", must be one of #{validator.allowable_values}."
      end
      @direction = direction
    end

    # Custom attribute writer method with validation
    # @param [Object] href Value to be assigned
    def href=(href)
      if href.nil?
        fail ArgumentError, 'href cannot be nil'
      end

      pattern = Regexp.new(/^http(s)?:\/\/([^\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      if href !~ pattern
        fail ArgumentError, "invalid value for \"href\", must conform to the pattern #{pattern}."
      end

      @href = href
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 64
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 64.'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[-0-9a-z_]+$/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_version Object to be assigned
    def ip_version=(ip_version)
      validator = EnumAttributeValidator.new('String', ["ipv4"])
      unless validator.valid?(ip_version)
        fail ArgumentError, "invalid value for \"ip_version\", must be one of #{validator.allowable_values}."
      end
      @ip_version = ip_version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protocol Object to be assigned
    def protocol=(protocol)
      validator = EnumAttributeValidator.new('String', ["all", "icmp", "tcp", "udp"])
      unless validator.valid?(protocol)
        fail ArgumentError, "invalid value for \"protocol\", must be one of #{validator.allowable_values}."
      end
      @protocol = protocol
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if !code.nil? && code > 255
        fail ArgumentError, 'invalid value for "code", must be smaller than or equal to 255.'
      end

      if !code.nil? && code < 0
        fail ArgumentError, 'invalid value for "code", must be greater than or equal to 0.'
      end

      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      if !type.nil? && type > 254
        fail ArgumentError, 'invalid value for "type", must be smaller than or equal to 254.'
      end

      if !type.nil? && type < 0
        fail ArgumentError, 'invalid value for "type", must be greater than or equal to 0.'
      end

      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] port_max Value to be assigned
    def port_max=(port_max)
      if !port_max.nil? && port_max > 65535
        fail ArgumentError, 'invalid value for "port_max", must be smaller than or equal to 65535.'
      end

      if !port_max.nil? && port_max < 1
        fail ArgumentError, 'invalid value for "port_max", must be greater than or equal to 1.'
      end

      @port_max = port_max
    end

    # Custom attribute writer method with validation
    # @param [Object] port_min Value to be assigned
    def port_min=(port_min)
      if !port_min.nil? && port_min > 65535
        fail ArgumentError, 'invalid value for "port_min", must be smaller than or equal to 65535.'
      end

      if !port_min.nil? && port_min < 1
        fail ArgumentError, 'invalid value for "port_min", must be greater than or equal to 1.'
      end

      @port_min = port_min
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          direction == o.direction &&
          href == o.href &&
          id == o.id &&
          ip_version == o.ip_version &&
          protocol == o.protocol &&
          remote == o.remote &&
          code == o.code &&
          type == o.type &&
          port_max == o.port_max &&
          port_min == o.port_min
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [direction, href, id, ip_version, protocol, remote, code, type, port_max, port_min].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
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
      when :DateTime
        DateTime.parse(value)
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
        IbmCloudVpc.const_get(type).build_from_hash(value)
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
