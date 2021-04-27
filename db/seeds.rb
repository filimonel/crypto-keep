# # Users
User.create!(email: "fili@user.com", password: "password")
User.create!(email: "sammy@user.com", password: "password")
User.create!(email: "filimone.leaaetoa@gmail.com", password: "password", admin: true)

# Calling API Crypto Scraper.
CryptoApiJob.perform_now
# CryptoInfoJob.perform_later

# Portfolio.create!(user_id: 3, crypto_id: 1)
# Portfolio.create!(user_id: 3, crypto_id: 2)
# Portfolio.create!(user_id: 3, crypto_id: 3)
# Portfolio.create!(user_id: 3, crypto_id: 4)
# Portfolio.create!(user_id: 3, crypto_id: 5)