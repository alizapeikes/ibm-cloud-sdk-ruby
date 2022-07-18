=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module IbmCloudPower
  class CloudConnection
    # cloud connection ID
    attr_accessor :cloud_connection_id

    # name of the cloud connection
    attr_accessor :name

    # speed of the cloud connection (speed in megabits per second)
    attr_accessor :speed

    # enable global routing for this cloud connection (default=false)
    attr_accessor :global_routing

    attr_accessor :classic

    attr_accessor :vpc

    # creation date
    attr_accessor :creation_date

    # user IP address
    attr_accessor :user_ip_address

    # IBM IP address
    attr_accessor :ibm_ip_address

    # port
    attr_accessor :port

    # link status
    attr_accessor :link_status

    # metered
    attr_accessor :metered

    # Network References
    attr_accessor :networks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cloud_connection_id' => :'cloudConnectionID',
        :'name' => :'name',
        :'speed' => :'speed',
        :'global_routing' => :'globalRouting',
        :'classic' => :'classic',
        :'vpc' => :'vpc',
        :'creation_date' => :'creationDate',
        :'user_ip_address' => :'userIPAddress',
        :'ibm_ip_address' => :'ibmIPAddress',
        :'port' => :'port',
        :'link_status' => :'linkStatus',
        :'metered' => :'metered',
        :'networks' => :'networks'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cloud_connection_id' => :'String',
        :'name' => :'String',
        :'speed' => :'Integer',
        :'global_routing' => :'Boolean',
        :'classic' => :'CloudConnectionEndpointClassic',
        :'vpc' => :'CloudConnectionEndpointVPC',
        :'creation_date' => :'Time',
        :'user_ip_address' => :'String',
        :'ibm_ip_address' => :'String',
        :'port' => :'Integer',
        :'link_status' => :'String',
        :'metered' => :'Boolean',
        :'networks' => :'Array<NetworkReference>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::CloudConnection` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::CloudConnection`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cloud_connection_id')
        self.cloud_connection_id = attributes[:'cloud_connection_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'speed')
        self.speed = attributes[:'speed']
      end

      if attributes.key?(:'global_routing')
        self.global_routing = attributes[:'global_routing']
      end

      if attributes.key?(:'classic')
        self.classic = attributes[:'classic']
      end

      if attributes.key?(:'vpc')
        self.vpc = attributes[:'vpc']
      end

      if attributes.key?(:'creation_date')
        self.creation_date = attributes[:'creation_date']
      end

      if attributes.key?(:'user_ip_address')
        self.user_ip_address = attributes[:'user_ip_address']
      end

      if attributes.key?(:'ibm_ip_address')
        self.ibm_ip_address = attributes[:'ibm_ip_address']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'link_status')
        self.link_status = attributes[:'link_status']
      end

      if attributes.key?(:'metered')
        self.metered = attributes[:'metered']
      end

      if attributes.key?(:'networks')
        if (value = attributes[:'networks']).is_a?(Array)
          self.networks = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cloud_connection_id.nil?
        invalid_properties.push('invalid value for "cloud_connection_id", cloud_connection_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @speed.nil?
        invalid_properties.push('invalid value for "speed", speed cannot be nil.')
      end

      if @global_routing.nil?
        invalid_properties.push('invalid value for "global_routing", global_routing cannot be nil.')
      end

      if @creation_date.nil?
        invalid_properties.push('invalid value for "creation_date", creation_date cannot be nil.')
      end

      if @user_ip_address.nil?
        invalid_properties.push('invalid value for "user_ip_address", user_ip_address cannot be nil.')
      end

      if @ibm_ip_address.nil?
        invalid_properties.push('invalid value for "ibm_ip_address", ibm_ip_address cannot be nil.')
      end

      if @port.nil?
        invalid_properties.push('invalid value for "port", port cannot be nil.')
      end

      if @link_status.nil?
        invalid_properties.push('invalid value for "link_status", link_status cannot be nil.')
      end

      if @metered.nil?
        invalid_properties.push('invalid value for "metered", metered cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cloud_connection_id.nil?
      return false if @name.nil?
      return false if @speed.nil?
      return false if @global_routing.nil?
      return false if @creation_date.nil?
      return false if @user_ip_address.nil?
      return false if @ibm_ip_address.nil?
      return false if @port.nil?
      return false if @link_status.nil?
      return false if @metered.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cloud_connection_id == o.cloud_connection_id &&
          name == o.name &&
          speed == o.speed &&
          global_routing == o.global_routing &&
          classic == o.classic &&
          vpc == o.vpc &&
          creation_date == o.creation_date &&
          user_ip_address == o.user_ip_address &&
          ibm_ip_address == o.ibm_ip_address &&
          port == o.port &&
          link_status == o.link_status &&
          metered == o.metered &&
          networks == o.networks
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cloud_connection_id, name, speed, global_routing, classic, vpc, creation_date, user_ip_address, ibm_ip_address, port, link_status, metered, networks].hash
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
      attributes = attributes.transform_keys(&:to_sym)
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
        klass = IbmCloudPower.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
