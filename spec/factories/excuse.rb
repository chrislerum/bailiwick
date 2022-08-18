FactoryBot.define do
  factory :excuse do
    name { 'Dave' }
    description { 'For excuse.' }
    image { Rack::Test::UploadedFile.new('spec/support/assets/image.png', 'image/png') }
  end
end
