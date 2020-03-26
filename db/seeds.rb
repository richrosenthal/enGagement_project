
#dummy users

ricky = User.create(name: "Richard", password_digest: "itsasecrectoallofus",
email: "rickyunddu@hotmail.com")

emma = User.create(name: "Emma Rosenthal", password_digest: "memesrus",
email: "cowsgoclickclick@hotmail.com")

#dummy gages

Gage.create(name: "Caliper", date_created: 12-10-19, due_date: 12-10-20,
  previous_due_date: 12-10-10, user_id: ricky.id)

Gage.create(name: "Caliper2", date_created: 12-11-19, due_date: 12-11-20,
    previous_due_date: 12-11-10, user_id: emma.id)
