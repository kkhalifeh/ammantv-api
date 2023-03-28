
# advertisers
advertiser1 = Advertiser.create(name: "SuperAds Inc", city: "New York", country: "USA")

# contacts
contact1 = Contact.create(first_name: "John", last_name: "Doe", mobile_number: "123-456-7890", title: "Marketing Manager", advertiser_id: advertiser1.id)

# ads
ad1 = Ad.create(name: "Amazing TVC", adtype: "TVC", attachment: "amazing_tvc.mp4", duration: 30, advertiser_id: advertiser1.id)
ad2 = Ad.create(name: "Super Sponsor", adtype: "Sponsor", attachment: "super_sponsor.mp4", duration: 15, advertiser_id: advertiser1.id)

# programs
program1 = Program.create(name: "Prime Time Show", scheduled_start_date: "2023-04-01", scheduled_end_date: "2023-04-30", duration: "01:00:00", start_time: "19:00:00", end_time: "20:00:00", scheduled_days: "Mon,Tue,Wed,Thu,Fri")

# ad_breaks
ad_break1 = AdBreak.create(name: "First Ad Break", duration: 180, program_id: program1.id, start_time: "19:15:00")

# users
user1 = User.create(username: "user1", password: "password123", email: "user1@example.com")

# ad_bookings
ad_booking1 = AdBooking.create(name: "TVC Booking", order: 1, ad_id: ad1.id, user_id: user1.id, ad_break_id: ad_break1.id, scheduled_start_date: "2023-04-01", scheduled_end_date: "2023-04-15", scheduled_days: "Mon,Wed,Fri", created_at: Time.now, updated_at: Time.now)
ad_booking2 = AdBooking.create(name: "Sponsor Booking", order: 2, ad_id: ad2.id, user_id: user1.id, ad_break_id: ad_break1.id, scheduled_start_date: "2023-04-01", scheduled_end_date: "2023-04-30", scheduled_days: "Tue,Thu", created_at: Time.now, updated_at: Time.now)
