namespace :crypto do
  desc "Updates crypto data"
  task update_all: :environment do
    puts "Updating crypto data..."
    CryptoApiJob.perform_later
    # CryptoInfoJob.perform_later
  end

end
