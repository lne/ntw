class ActiveSupport::TimeWithZone
  attr_accessor :a, :b
end
Ransack.configure do |config|
  config.add_predicate 'btw', 
  :wants_array => false,
  :arel_predicate => 'in',
  #:formatter => proc {|v| Range.new(process_user_date_search_string(v).first.to_date, process_user_date_search_string(v).last.to_date)}
  #:formatter => proc {|v| v }
  #:formatter => proc {|v| Range.new(Time.now, Time.now + 10.days)}
 # :formatter => proc {|v| Range.new(v, v + 10.days)}
  :formatter => proc {|v| p v.class; p v.__id__; p "000000000000";Range.new(v.a, v.b)}
  #:formatter => proc {|v| Range.new(v.first.to_date, v.last.to_date)}
end
