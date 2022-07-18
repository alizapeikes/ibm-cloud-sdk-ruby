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
  class VolumeReference
    # Volume ID
    attr_accessor :volume_id

    # Volume Name
    attr_accessor :name

    # Volume State
    attr_accessor :state

    # Volume Size
    attr_accessor :size

    # Indicates if the volume is shareable between VMs
    attr_accessor :shareable

    # Indicates if the volume is boot capable
    attr_accessor :bootable

    # Indicates if the volume is the server's boot volume
    attr_accessor :boot_volume

    # Indicates if the volume should be deleted when the server terminates
    attr_accessor :delete_on_termination

    # Type of Disk
    attr_accessor :disk_type

    # Volume pool, name of storage pool where the volume is located
    attr_accessor :volume_pool

    # Volume type, name of storage template used to create the volume
    attr_accessor :volume_type

    # Volume world wide name
    attr_accessor :wwn

    # Creation Date
    attr_accessor :creation_date

    # Last Update Date
    attr_accessor :last_update_date

    # Link to Volume resource
    attr_accessor :href

    # List of PCloud PVM Instance attached to the volume
    attr_accessor :pvm_instance_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'volume_id' => :'volumeID',
        :'name' => :'name',
        :'state' => :'state',
        :'size' => :'size',
        :'shareable' => :'shareable',
        :'bootable' => :'bootable',
        :'boot_volume' => :'bootVolume',
        :'delete_on_termination' => :'deleteOnTermination',
        :'disk_type' => :'diskType',
        :'volume_pool' => :'volumePool',
        :'volume_type' => :'volumeType',
        :'wwn' => :'wwn',
        :'creation_date' => :'creationDate',
        :'last_update_date' => :'lastUpdateDate',
        :'href' => :'href',
        :'pvm_instance_ids' => :'pvmInstanceIDs'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'volume_id' => :'String',
        :'name' => :'String',
        :'state' => :'String',
        :'size' => :'Float',
        :'shareable' => :'Boolean',
        :'bootable' => :'Boolean',
        :'boot_volume' => :'Boolean',
        :'delete_on_termination' => :'Boolean',
        :'disk_type' => :'String',
        :'volume_pool' => :'String',
        :'volume_type' => :'String',
        :'wwn' => :'String',
        :'creation_date' => :'Time',
        :'last_update_date' => :'Time',
        :'href' => :'String',
        :'pvm_instance_ids' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::VolumeReference` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::VolumeReference`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'volume_id')
        self.volume_id = attributes[:'volume_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'shareable')
        self.shareable = attributes[:'shareable']
      end

      if attributes.key?(:'bootable')
        self.bootable = attributes[:'bootable']
      end

      if attributes.key?(:'boot_volume')
        self.boot_volume = attributes[:'boot_volume']
      end

      if attributes.key?(:'delete_on_termination')
        self.delete_on_termination = attributes[:'delete_on_termination']
      end

      if attributes.key?(:'disk_type')
        self.disk_type = attributes[:'disk_type']
      end

      if attributes.key?(:'volume_pool')
        self.volume_pool = attributes[:'volume_pool']
      end

      if attributes.key?(:'volume_type')
        self.volume_type = attributes[:'volume_type']
      end

      if attributes.key?(:'wwn')
        self.wwn = attributes[:'wwn']
      end

      if attributes.key?(:'creation_date')
        self.creation_date = attributes[:'creation_date']
      end

      if attributes.key?(:'last_update_date')
        self.last_update_date = attributes[:'last_update_date']
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'pvm_instance_ids')
        if (value = attributes[:'pvm_instance_ids']).is_a?(Array)
          self.pvm_instance_ids = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @volume_id.nil?
        invalid_properties.push('invalid value for "volume_id", volume_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @shareable.nil?
        invalid_properties.push('invalid value for "shareable", shareable cannot be nil.')
      end

      if @bootable.nil?
        invalid_properties.push('invalid value for "bootable", bootable cannot be nil.')
      end

      if @disk_type.nil?
        invalid_properties.push('invalid value for "disk_type", disk_type cannot be nil.')
      end

      if @wwn.nil?
        invalid_properties.push('invalid value for "wwn", wwn cannot be nil.')
      end

      if @creation_date.nil?
        invalid_properties.push('invalid value for "creation_date", creation_date cannot be nil.')
      end

      if @last_update_date.nil?
        invalid_properties.push('invalid value for "last_update_date", last_update_date cannot be nil.')
      end

      if @href.nil?
        invalid_properties.push('invalid value for "href", href cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @volume_id.nil?
      return false if @name.nil?
      return false if @state.nil?
      return false if @size.nil?
      return false if @shareable.nil?
      return false if @bootable.nil?
      return false if @disk_type.nil?
      return false if @wwn.nil?
      return false if @creation_date.nil?
      return false if @last_update_date.nil?
      return false if @href.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          volume_id == o.volume_id &&
          name == o.name &&
          state == o.state &&
          size == o.size &&
          shareable == o.shareable &&
          bootable == o.bootable &&
          boot_volume == o.boot_volume &&
          delete_on_termination == o.delete_on_termination &&
          disk_type == o.disk_type &&
          volume_pool == o.volume_pool &&
          volume_type == o.volume_type &&
          wwn == o.wwn &&
          creation_date == o.creation_date &&
          last_update_date == o.last_update_date &&
          href == o.href &&
          pvm_instance_ids == o.pvm_instance_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [volume_id, name, state, size, shareable, bootable, boot_volume, delete_on_termination, disk_type, volume_pool, volume_type, wwn, creation_date, last_update_date, href, pvm_instance_ids].hash
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
