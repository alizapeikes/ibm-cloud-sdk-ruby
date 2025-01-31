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
  class CreateDataVolume
    # Type of disk, required if affinityPolicy is not provided, otherwise ignored.
    attr_accessor :disk_type

    # Volume pool where the volume will be created; if provided then diskType and affinityPolicy values are ignored.
    attr_accessor :volume_pool

    # Volume Name
    attr_accessor :name

    # Volume Size (GB)
    attr_accessor :size

    # Indicates if the volume is shareable between VMs
    attr_accessor :shareable

    # Affinity policy for data volume being created; ignored if volumePool provided. For policy 'affinity'; requires one of affinityPVMInstance or affinityVolume to be specified. For policy 'anti-affinity'; requires one of antiAffinityPVMInstances or antiAffinityVolumes to be specified.
    attr_accessor :affinity_policy

    # Volume (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityPVMInstance is not provided
    attr_accessor :affinity_volume

    # PVM Instance (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityVolume is not provided
    attr_accessor :affinity_pvm_instance

    # List of volumes to base volume anti-affinity policy against; required if requesting anti-affinity and storageAntiAffinityPVMInstances is not provided
    attr_accessor :anti_affinity_volumes

    # List of pvmInstances to base volume anti-affinity policy against; required if requesting anti-affinity and antiAffinityVolumes is not provided
    attr_accessor :anti_affinity_pvm_instances

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'disk_type' => :'diskType',
        :'volume_pool' => :'volumePool',
        :'name' => :'name',
        :'size' => :'size',
        :'shareable' => :'shareable',
        :'affinity_policy' => :'affinityPolicy',
        :'affinity_volume' => :'affinityVolume',
        :'affinity_pvm_instance' => :'affinityPVMInstance',
        :'anti_affinity_volumes' => :'antiAffinityVolumes',
        :'anti_affinity_pvm_instances' => :'antiAffinityPVMInstances'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'disk_type' => :'String',
        :'volume_pool' => :'String',
        :'name' => :'String',
        :'size' => :'Float',
        :'shareable' => :'Boolean',
        :'affinity_policy' => :'String',
        :'affinity_volume' => :'String',
        :'affinity_pvm_instance' => :'String',
        :'anti_affinity_volumes' => :'Array<String>',
        :'anti_affinity_pvm_instances' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::CreateDataVolume` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::CreateDataVolume`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'disk_type')
        self.disk_type = attributes[:'disk_type']
      end

      if attributes.key?(:'volume_pool')
        self.volume_pool = attributes[:'volume_pool']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'shareable')
        self.shareable = attributes[:'shareable']
      end

      if attributes.key?(:'affinity_policy')
        self.affinity_policy = attributes[:'affinity_policy']
      end

      if attributes.key?(:'affinity_volume')
        self.affinity_volume = attributes[:'affinity_volume']
      end

      if attributes.key?(:'affinity_pvm_instance')
        self.affinity_pvm_instance = attributes[:'affinity_pvm_instance']
      end

      if attributes.key?(:'anti_affinity_volumes')
        if (value = attributes[:'anti_affinity_volumes']).is_a?(Array)
          self.anti_affinity_volumes = value
        end
      end

      if attributes.key?(:'anti_affinity_pvm_instances')
        if (value = attributes[:'anti_affinity_pvm_instances']).is_a?(Array)
          self.anti_affinity_pvm_instances = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @size.nil?
      affinity_policy_validator = EnumAttributeValidator.new('String', ["affinity", "anti-affinity"])
      return false unless affinity_policy_validator.valid?(@affinity_policy)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affinity_policy Object to be assigned
    def affinity_policy=(affinity_policy)
      validator = EnumAttributeValidator.new('String', ["affinity", "anti-affinity"])
      unless validator.valid?(affinity_policy)
        fail ArgumentError, "invalid value for \"affinity_policy\", must be one of #{validator.allowable_values}."
      end
      @affinity_policy = affinity_policy
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          disk_type == o.disk_type &&
          volume_pool == o.volume_pool &&
          name == o.name &&
          size == o.size &&
          shareable == o.shareable &&
          affinity_policy == o.affinity_policy &&
          affinity_volume == o.affinity_volume &&
          affinity_pvm_instance == o.affinity_pvm_instance &&
          anti_affinity_volumes == o.anti_affinity_volumes &&
          anti_affinity_pvm_instances == o.anti_affinity_pvm_instances
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [disk_type, volume_pool, name, size, shareable, affinity_policy, affinity_volume, affinity_pvm_instance, anti_affinity_volumes, anti_affinity_pvm_instances].hash
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
