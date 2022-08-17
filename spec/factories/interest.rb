FactoryBot.define do
  factory :interest do
    name { 'Charlie' }
    description { 'The first to the table.' }
    image { Rack::Test::UploadedFile.new('spec/support/assets/image.png', 'image/png') }
  end
end
