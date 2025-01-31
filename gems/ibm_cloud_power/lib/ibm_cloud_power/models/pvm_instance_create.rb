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
  class PVMInstanceCreate
    # Name of the server to create
    attr_accessor :server_name

    # Number of duplicate instances to create in this request
    attr_accessor :replicants

    # How to name the created vms
    attr_accessor :replicant_naming_scheme

    # Affinity policy for replicants being created; affinity for the same host, anti-affinity for different hosts, none for no preference
    attr_accessor :replicant_affinity_policy

    # Image ID of the image to use for the server
    attr_accessor :image_id

    # Number of processors allocated
    attr_accessor :processors

    # Processor type (dedicated, shared, capped)
    attr_accessor :proc_type

    # Amount of memory allocated (in GB)
    attr_accessor :memory

    # (deprecated - replaced by networks) List of Network IDs
    attr_accessor :network_ids

    # The pvm instance networks information
    attr_accessor :networks

    # List of volume IDs
    attr_accessor :volume_ids

    # The name of the SSH key pair provided to the server for authenticating users (looked up in the tenant's list of keys)
    attr_accessor :key_pair_name

    # System type used to host the instance
    attr_accessor :sys_type

    # Indicates if the server is allowed to migrate between hosts
    attr_accessor :migratable

    # Cloud-init user-defined data. The user-defined data is made available to the VM instance as a config drive.
    attr_accessor :user_data

    # Storage type for server deployment; will be ignored if storagePool or storageAffinity is provided; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in
    attr_accessor :storage_type

    attr_accessor :storage_affinity

    # Storage Pool for server deployment; if provided then storageAffinity and storageType will be ignored; Only valid when you deploy one of the IBM supplied stock images. Storage type and pool for a custom image (an imported image or an image that is created from a PVMInstance capture) defaults to the storage type and pool the image was created in
    attr_accessor :storage_pool

    attr_accessor :software_licenses

    attr_accessor :pin_policy

    attr_accessor :virtual_cores

    # The placement group for the server
    attr_accessor :placement_group

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
        :'server_name' => :'serverName',
        :'replicants' => :'replicants',
        :'replicant_naming_scheme' => :'replicantNamingScheme',
        :'replicant_affinity_policy' => :'replicantAffinityPolicy',
        :'image_id' => :'imageID',
        :'processors' => :'processors',
        :'proc_type' => :'procType',
        :'memory' => :'memory',
        :'network_ids' => :'networkIDs',
        :'networks' => :'networks',
        :'volume_ids' => :'volumeIDs',
        :'key_pair_name' => :'keyPairName',
        :'sys_type' => :'sysType',
        :'migratable' => :'migratable',
        :'user_data' => :'userData',
        :'storage_type' => :'storageType',
        :'storage_affinity' => :'storageAffinity',
        :'storage_pool' => :'storagePool',
        :'software_licenses' => :'softwareLicenses',
        :'pin_policy' => :'pinPolicy',
        :'virtual_cores' => :'virtualCores',
        :'placement_group' => :'placementGroup'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'server_name' => :'String',
        :'replicants' => :'Float',
        :'replicant_naming_scheme' => :'String',
        :'replicant_affinity_policy' => :'String',
        :'image_id' => :'String',
        :'processors' => :'Float',
        :'proc_type' => :'String',
        :'memory' => :'Float',
        :'network_ids' => :'Array<String>',
        :'networks' => :'Array<PVMInstanceAddNetwork>',
        :'volume_ids' => :'Array<String>',
        :'key_pair_name' => :'String',
        :'sys_type' => :'String',
        :'migratable' => :'Boolean',
        :'user_data' => :'String',
        :'storage_type' => :'String',
        :'storage_affinity' => :'StorageAffinity',
        :'storage_pool' => :'String',
        :'software_licenses' => :'SoftwareLicenses',
        :'pin_policy' => :'PinPolicy',
        :'virtual_cores' => :'VirtualCores',
        :'placement_group' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::PVMInstanceCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::PVMInstanceCreate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'server_name')
        self.server_name = attributes[:'server_name']
      end

      if attributes.key?(:'replicants')
        self.replicants = attributes[:'replicants']
      end

      if attributes.key?(:'replicant_naming_scheme')
        self.replicant_naming_scheme = attributes[:'replicant_naming_scheme']
      else
        self.replicant_naming_scheme = 'suffix'
      end

      if attributes.key?(:'replicant_affinity_policy')
        self.replicant_affinity_policy = attributes[:'replicant_affinity_policy']
      else
        self.replicant_affinity_policy = 'none'
      end

      if attributes.key?(:'image_id')
        self.image_id = attributes[:'image_id']
      end

      if attributes.key?(:'processors')
        self.processors = attributes[:'processors']
      end

      if attributes.key?(:'proc_type')
        self.proc_type = attributes[:'proc_type']
      else
        self.proc_type = 'dedicated'
      end

      if attributes.key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.key?(:'network_ids')
        if (value = attributes[:'network_ids']).is_a?(Array)
          self.network_ids = value
        end
      end

      if attributes.key?(:'networks')
        if (value = attributes[:'networks']).is_a?(Array)
          self.networks = value
        end
      end

      if attributes.key?(:'volume_ids')
        if (value = attributes[:'volume_ids']).is_a?(Array)
          self.volume_ids = value
        end
      end

      if attributes.key?(:'key_pair_name')
        self.key_pair_name = attributes[:'key_pair_name']
      end

      if attributes.key?(:'sys_type')
        self.sys_type = attributes[:'sys_type']
      end

      if attributes.key?(:'migratable')
        self.migratable = attributes[:'migratable']
      else
        self.migratable = true
      end

      if attributes.key?(:'user_data')
        self.user_data = attributes[:'user_data']
      end

      if attributes.key?(:'storage_type')
        self.storage_type = attributes[:'storage_type']
      end

      if attributes.key?(:'storage_affinity')
        self.storage_affinity = attributes[:'storage_affinity']
      end

      if attributes.key?(:'storage_pool')
        self.storage_pool = attributes[:'storage_pool']
      end

      if attributes.key?(:'software_licenses')
        self.software_licenses = attributes[:'software_licenses']
      end

      if attributes.key?(:'pin_policy')
        self.pin_policy = attributes[:'pin_policy']
      end

      if attributes.key?(:'virtual_cores')
        self.virtual_cores = attributes[:'virtual_cores']
      end

      if attributes.key?(:'placement_group')
        self.placement_group = attributes[:'placement_group']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @server_name.nil?
        invalid_properties.push('invalid value for "server_name", server_name cannot be nil.')
      end

      if @image_id.nil?
        invalid_properties.push('invalid value for "image_id", image_id cannot be nil.')
      end

      if @processors.nil?
        invalid_properties.push('invalid value for "processors", processors cannot be nil.')
      end

      if @proc_type.nil?
        invalid_properties.push('invalid value for "proc_type", proc_type cannot be nil.')
      end

      if @memory.nil?
        invalid_properties.push('invalid value for "memory", memory cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @server_name.nil?
      replicant_naming_scheme_validator = EnumAttributeValidator.new('String', ["prefix", "suffix"])
      return false unless replicant_naming_scheme_validator.valid?(@replicant_naming_scheme)
      replicant_affinity_policy_validator = EnumAttributeValidator.new('String', ["affinity", "anti-affinity", "none"])
      return false unless replicant_affinity_policy_validator.valid?(@replicant_affinity_policy)
      return false if @image_id.nil?
      return false if @processors.nil?
      return false if @proc_type.nil?
      proc_type_validator = EnumAttributeValidator.new('String', ["dedicated", "shared", "capped"])
      return false unless proc_type_validator.valid?(@proc_type)
      return false if @memory.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replicant_naming_scheme Object to be assigned
    def replicant_naming_scheme=(replicant_naming_scheme)
      validator = EnumAttributeValidator.new('String', ["prefix", "suffix"])
      unless validator.valid?(replicant_naming_scheme)
        fail ArgumentError, "invalid value for \"replicant_naming_scheme\", must be one of #{validator.allowable_values}."
      end
      @replicant_naming_scheme = replicant_naming_scheme
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replicant_affinity_policy Object to be assigned
    def replicant_affinity_policy=(replicant_affinity_policy)
      validator = EnumAttributeValidator.new('String', ["affinity", "anti-affinity", "none"])
      unless validator.valid?(replicant_affinity_policy)
        fail ArgumentError, "invalid value for \"replicant_affinity_policy\", must be one of #{validator.allowable_values}."
      end
      @replicant_affinity_policy = replicant_affinity_policy
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proc_type Object to be assigned
    def proc_type=(proc_type)
      validator = EnumAttributeValidator.new('String', ["dedicated", "shared", "capped"])
      unless validator.valid?(proc_type)
        fail ArgumentError, "invalid value for \"proc_type\", must be one of #{validator.allowable_values}."
      end
      @proc_type = proc_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          server_name == o.server_name &&
          replicants == o.replicants &&
          replicant_naming_scheme == o.replicant_naming_scheme &&
          replicant_affinity_policy == o.replicant_affinity_policy &&
          image_id == o.image_id &&
          processors == o.processors &&
          proc_type == o.proc_type &&
          memory == o.memory &&
          network_ids == o.network_ids &&
          networks == o.networks &&
          volume_ids == o.volume_ids &&
          key_pair_name == o.key_pair_name &&
          sys_type == o.sys_type &&
          migratable == o.migratable &&
          user_data == o.user_data &&
          storage_type == o.storage_type &&
          storage_affinity == o.storage_affinity &&
          storage_pool == o.storage_pool &&
          software_licenses == o.software_licenses &&
          pin_policy == o.pin_policy &&
          virtual_cores == o.virtual_cores &&
          placement_group == o.placement_group
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [server_name, replicants, replicant_naming_scheme, replicant_affinity_policy, image_id, processors, proc_type, memory, network_ids, networks, volume_ids, key_pair_name, sys_type, migratable, user_data, storage_type, storage_affinity, storage_pool, software_licenses, pin_policy, virtual_cores, placement_group].hash
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
