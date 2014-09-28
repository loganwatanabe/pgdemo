json.array!(@designs) do |design|
  json.extract! design, :id, :design_id, :product_id, :account_id, :account_file, :save_method, :total_units, :has_upload, :created_at, :updated_at, :postal_code
  json.url design_url(design, format: :json)
end
