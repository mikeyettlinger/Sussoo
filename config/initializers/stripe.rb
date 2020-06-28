Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_xF61NzZKqAY359NF0YuBtp59000aPPR7ZH'],
  :secret_key      => ENV['sk_test_z4omCsuISpY1Tq9oz6GFcCVa00laIotMB7']
}

# Stripe.api_key = Rails.configuration.stripe[:secret_key]
# Stripe.api_key = Rails.application.credentials.stripe[:secret_key]
