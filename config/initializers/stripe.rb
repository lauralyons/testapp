if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_cPA3kX5EnpVpo25YbP4zz7T8',
    secret_key: 'sk_test_UjylLVOiPCpCkbRAkzVfHvd0'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
