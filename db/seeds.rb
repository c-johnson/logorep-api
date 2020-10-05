# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Jurisdictions

Jurisdiction.create(
  id: 1,
  name: "Kansas City",
  state: "MO",
  city_county: "City",
  website_main: "https://www.kcmo.gov/",
  website_meeting: "http://cityclerk.kcmo.org/liveweb/common/",
  website_meeting_cc: "http://cityclerk.kcmo.org/liveweb/Groups/Group.aspx?q=S8XiC%2fRs0WwU77m0O6H8FzyApAkUOfuYcNq%2blMKnkV1La39jbh4Sxos8%2bIqtvChp"
)

# https://www.kcmo.gov/city-hall/city-officials/city-council-members
Councilmember.create(
  name: "Quinton Lucas",
  position: "mayor",

  jurisdiction_id: 1,

  phone_number: "816-513-3500",
  email: "MayorQ@kcmo.org",
  twitter: "MayorLucasKC",
  facebook: "quinton.lucas",
  instagram: "Quinton_Lucas"
)

Councilmember.create(
  name: "Kevin McManus",
  position: "mayor_pro_temp",
  phone_number: "816-513-6525",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Heather Hall",
  position: "district_1",

  jurisdiction_id: 1,

  phone_number: "816-513-6505",
  email: "heather.hall@kcmo.org",
  twitter: "Hall1stDistrict",
  facebook: "heather.hall.9615566"
)

Councilmember.create(
  name: "Kevin O'Neill",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Teresa Loar",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Dan Fowler",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Brandon Ellington",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Melissa Robinson",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Katheryn Shields",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Eric Bunch",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Lee Barnes, Jr",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Ryana Parks-Shaw",

  jurisdiction_id: 1,
)

Councilmember.create(
  name: "Andrea Bough",

  jurisdiction_id: 1,
)


Jurisdiction.create(
  name: "Kansas City",
  state: "KS",
  city_county: "City",
  website_main: "https://www.wycokck.org/home",
  website_meeting: "https://www.wycokck.org/Clerk/Agendas.aspx",
  website_meeting_cc: "https://www.wycokck.org/Clerk/Agendas.aspx"
)

Jurisdiction.create(
  name: "Overland Park",
  state: "KS",
  city_county: "City",
  website_main: "https://www.opkansas.org/",
  website_meeting: "https://opkansas.civicweb.net/Portal/MeetingTypeList.aspx",
  website_meeting_cc: "https://opkansas.civicweb.net/Portal/MeetingInformation.aspx?Id=300"
)

Jurisdiction.create(
  name: "Johnson County",
  state: "KS",
  city_county: "County",
  website_main: "https://www.jocogov.org/",
  website_meeting: "https://www.jocogov.org/calendar-created/month?field_event_type_tid=All",
  website_meeting_cc: "https://boccmeetings.jocogov.org/onbaseagendaonline"
)

Jurisdiction.create(
  name: "Jackson County",
  state: "MO",
  city_county: "County",
  website_main: "https://www.jacksongov.org/",
  website_meeting: "https://jacksonco.legistar.com/DepartmentDetail.aspx?ID=-1&GUID=D86851E4-A1AA-4ADA-B0A8-91CB5B217E40&R=0895ee89-8acd-42e4-bc95-80bc9268b522",
  website_meeting_cc: "https://jacksonco.legistar.com/DepartmentDetail.aspx?ID=24971&GUID=08E8B88E-4D94-445D-90D4-DA1215CAF6DB&R=16965b35-ad2c-461c-86f6-d28505f37022"
)
