class AvailabilityValidator < ActiveModel::EachValidator
  # https://medium.com/lightthefuse/ruby-on-rails-date-validation-in-a-booking-and-disabling-dates-in-date-picker-3e5b4e9b4640
  def validate_each(record, attribute, value)
    reservations = Reservation.where(["space_id =?", record.space_id])
    date_ranges = reservations.map { |r| r.start_date..r.end_date }

    date_ranges.each do |range|
      record.errors.add(attribute, 'not available') if range.include? value
    end
  end
end
