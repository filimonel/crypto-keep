namespace :crypto do
  desc "Updates crypto data"
  task update_all: :environment do
    puts "Updating crypto data..."
    CryptoApiJob.perform_later
    # CryptoApiJob.set(wait: 10.seconds).perform_later
  end

end
