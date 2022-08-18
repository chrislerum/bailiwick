FactoryBot.define do
  factory :hindrance do
    name { 'Beck' }
    description { 'This is for hindrance.' }
    image { Rack::Test::UploadedFile.new('spec/support/assets/image.png', 'image/png') }
  end
end
