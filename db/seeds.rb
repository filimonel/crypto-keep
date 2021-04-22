# # Users
User.create!(email: "fili@user.com", password: "password")
User.create!(email: "sammy@user.com", password: "password")
User.create!(email: "filimone.leaaetoa@gmail.com", password: "password", admin: true)

# Calling API Crypto Scraper.
CryptoApiJob.perform_now
# CryptoInfoJob.perform_later