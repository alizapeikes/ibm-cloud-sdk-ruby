=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class AddressPrefixPrototype
    # The IPv4 range of the address prefix, expressed in CIDR format. The request must not overlap with any existing address prefixes in the VPC, and must fall within the [RFC 1918](https://tools.ietf.org/html/rfc1918) address ranges. The prefix length of the address prefix's CIDR must be between `/8` (16,777,216 addresses) and `/29` (8 addresses).
    attr_accessor :cidr

    # Indicates whether this is the default prefix for this zone in this VPC. If true, this prefix will become the default prefix for this zone in this VPC. This fails if the VPC currently has a default address prefix for this zone.
    attr_accessor :is_default

    # The user-defined name for this address prefix. Names must be unique within the VPC the address prefix resides in. If unspecified, the name will be a hyphenated list of randomly-selected words.
    attr_accessor :name

    attr_accessor :zone

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cidr' => :'cidr',
        :'is_default' => :'is_default',
        :'name' => :'name',
        :'zone' => :'zone'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cidr' => :'String',
        :'is_default' => :'Boolean',
        :'name' => :'String',
        :'zone' => :'ZoneIdentity'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::AddressPrefixPrototype` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::AddressPrefixPrototype`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cidr')
        self.cidr = attributes[:'cidr']
      end

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      else
        self.is_default = false
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'zone')
        self.zone = attributes[:'zone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cidr.nil?
        invalid_properties.push('invalid value for "cidr", cidr cannot be nil.')
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\/(3[0-2]|[1-2][0-9]|[0-9]))$/)
      if @cidr !~ pattern
        invalid_properties.push("invalid value for \"cidr\", must conform to the pattern #{pattern}.")
      end

      if !@name.nil? && @name.to_s.length > 63
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 63.')
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if !@name.nil? && @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      if @zone.nil?
        invalid_properties.push('invalid value for "zone", zone cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cidr.nil?
      return false if @cidr !~ Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\/(3[0-2]|[1-2][0-9]|[0-9]))$/)
      return false if !@name.nil? && @name.to_s.length > 63
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@name.nil? && @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      return false if @zone.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] cidr Value to be assigned
    def cidr=(cidr)
      if cidr.nil?
        fail ArgumentError, 'cidr cannot be nil'
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\/(3[0-2]|[1-2][0-9]|[0-9]))$/)
      if cidr !~ pattern
        fail ArgumentError, "invalid value for \"cidr\", must conform to the pattern #{pattern}."
      end

      @cidr = cidr
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 63
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 63.'
      end

      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if !name.nil? && name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cidr == o.cidr &&
          is_default == o.is_default &&
          name == o.name &&
          zone == o.zone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cidr, is_default, name, zone].hash
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
