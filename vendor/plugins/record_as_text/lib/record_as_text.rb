module RecordAsText

  def as_text_line(attribute_values)
    attribute_values.collect { |value|
      normalize_attribute_value(value)
    }.compact.join(', ').gsub(/( \,)/,',').gsub(/\,+/,',').gsub(/\.+/,'.').sub(/^\d\.\-/,'').sub(/^\.\-/,'').sub(/^(\s)+/,'')
  end    
  
  def normalize_attribute_value(value)
       unless value.to_s.empty?
         value.to_s.strip.gsub(/\n/,'').gsub(/\r/,'').strip.gsub(/\s{1}+/,' ').gsub(/^\"|\"$|^\“|\”$|^\'|\'$/,'').gsub(/ \./,'').sub(/( \,$)+/,'').gsub(/\.+/,'.').sub(/^\d\.\-/,'').sub(/^\.\-/,'').sub(/^(\d\.)+/,'').sub(/^(\s)+/,'')
       end    
  end
  
  def label_for(value, label)
    value.to_s.empty? ? nil : [label, value].join(': ')
  end
end