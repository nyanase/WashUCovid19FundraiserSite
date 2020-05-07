json.extract! plan, :id, :name, :description, :price_cents, :created_at, :updated_at
json.url plan_url(plan, format: :json)
