class ActiveSupport::TimeWithZone
  attr_accessor :ransack_btw_to
end
Ransack.configure do |config|
  config.add_predicate 'btw', 
  :arel_predicate => 'in',
  #:formatter => proc {|v| Range.new(Time.now, Time.now + 10.days)}
  :formatter => proc { |v| p v;Range.new(v, v.ransack_btw_to) }
  #:formatter => proc {|v| Range.new(process_user_date_search_string(v).first.to_date, process_user_date_search_string(v).last.to_date)}
  #:formatter => proc {|v| v }
  #:formatter => proc {|v| Range.new(Time.now, Time.now + 10.days)}
 # :formatter => proc {|v| Range.new(v, v + 10.days)}
  #:formatter => proc {|v| Range.new(v.first.to_date, v.last.to_date)}
end
