json.array!(@gigs) do |gig|
  json.extract! gig, :event, :description, :location, :date
  json.url gig_url(gig, format: :json)
end
