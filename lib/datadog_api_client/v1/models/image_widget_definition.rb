=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The image widget allows you to embed an image on your dashboard. An image can be a PNG, JPG, or animated GIF. Only available on FREE layout dashboards.
  class ImageWidgetDefinition
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Whether to display a background or not.
    attr_accessor :has_background

    # Whether to display a border or not.
    attr_accessor :has_border

    # Horizontal alignment.
    attr_accessor :horizontal_align

    # Size of the margins around the image.
    # **Note**: `small` and `large` values are deprecated.
    attr_accessor :margin

    # How to size the image on the widget. The values are based on the image `object-fit` CSS properties.
    # **Note**: `zoom`, `fit` and `center` values are deprecated.
    attr_accessor :sizing

    # Type of the image widget.
    attr_reader :type

    # URL of the image.
    attr_reader :url

    # URL of the image in dark mode.
    attr_accessor :url_dark_theme

    # Vertical alignment.
    attr_accessor :vertical_align

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'has_background' => :'has_background',
        :'has_border' => :'has_border',
        :'horizontal_align' => :'horizontal_align',
        :'margin' => :'margin',
        :'sizing' => :'sizing',
        :'type' => :'type',
        :'url' => :'url',
        :'url_dark_theme' => :'url_dark_theme',
        :'vertical_align' => :'vertical_align'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'has_background' => :'Boolean',
        :'has_border' => :'Boolean',
        :'horizontal_align' => :'WidgetHorizontalAlign',
        :'margin' => :'WidgetMargin',
        :'sizing' => :'WidgetImageSizing',
        :'type' => :'ImageWidgetDefinitionType',
        :'url' => :'String',
        :'url_dark_theme' => :'String',
        :'vertical_align' => :'WidgetVerticalAlign'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ImageWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ImageWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'has_background')
        self.has_background = attributes[:'has_background']
      end

      if attributes.key?(:'has_border')
        self.has_border = attributes[:'has_border']
      end

      if attributes.key?(:'horizontal_align')
        self.horizontal_align = attributes[:'horizontal_align']
      end

      if attributes.key?(:'margin')
        self.margin = attributes[:'margin']
      end

      if attributes.key?(:'sizing')
        self.sizing = attributes[:'sizing']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'url_dark_theme')
        self.url_dark_theme = attributes[:'url_dark_theme']
      end

      if attributes.key?(:'vertical_align')
        self.vertical_align = attributes[:'vertical_align']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @type.nil?
      return false if @url.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param url [Object] Object to be assigned
    # @!visibility private
    def url=(url)
      if url.nil?
        fail ArgumentError, 'invalid value for "url", url cannot be nil.'
      end
      @url = url
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          has_background == o.has_background &&
          has_border == o.has_border &&
          horizontal_align == o.horizontal_align &&
          margin == o.margin &&
          sizing == o.sizing &&
          type == o.type &&
          url == o.url &&
          url_dark_theme == o.url_dark_theme &&
          vertical_align == o.vertical_align
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [has_background, has_border, horizontal_align, margin, sizing, type, url, url_dark_theme, vertical_align].hash
    end
  end
end
