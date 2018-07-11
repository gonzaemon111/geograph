require 'geokit'
include Geokit::Geocoders

Geokit::default_units = :kms

waseda = GoogleGeocoder.geocode('早稲田大学')
baylor = GoogleGeocoder.geocode('Baylor University ')
puts waseda.distance_to(baylor, formula: :sphere)  # 近似しない
