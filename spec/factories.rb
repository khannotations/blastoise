FactoryGirl.define do 
  factory :reader do
    first_name 'test'
    last_name 'user'
    email 'test@essayer.com'
    password 'test$password'
  end

  factory :article do
    title '--blank--'
    author '--blank--'
    text '--blank--'
  end
end
