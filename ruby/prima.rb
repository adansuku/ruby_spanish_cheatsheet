require 'byebug'

class UpsellFinder
  def self.get_owned_vehicles(person_ids)
    api_response = [
      {person_id: "P1", vehicle_id: "V8"},
      {person_id: "P1", vehicle_id: "V3"},
      {person_id: "P2", vehicle_id: "V6"},
      {person_id: "P2", vehicle_id: "V4"}
    ]

    api_response.select { |vehicle| person_ids.include?(vehicle[:person_id]) }
    # policies = [
    #   {person_id: "P2", vehicle_id: "V6"},
    #   {person_id: "P1", vehicle_id: "V3"},
    #   {person_id: "P2", vehicle_id: "V4"}
    # ]
  end

  def self.find_potential_upsells(policies)


    person_ids = policies.map { |policy| policy[:person_id] }.uniq
    # ["P2", "P1"]

    vehicles = get_owned_vehicles(person_ids)
    # [
    # {:person_id=>"P1", :vehicle_id=>"V8"},
    # {:person_id=>"P1", :vehicle_id=>"V3"},
    # {:person_id=>"P2", :vehicle_id=>"V6"},
    # {:person_id=>"P2", :vehicle_id=>"V4"}
    # ]

    insured_vehicles = policies.map { |policy| [policy[:person_id], policy[:vehicle_id]] }
    # [["P2", "V6"], ["P1", "V3"], ["P2", "V4"]]

    uninsured_vehicles = vehicles.select do |vehicle|
      !insured_vehicles.include?([vehicle[:person_id], vehicle[:vehicle_id]])
    end
    # [{:person_id=>"P1", :vehicle_id=>"V8"}]

    uninsured_vehicles
  end
end

# Example usage
policies = [
  {person_id: "P2", vehicle_id: "V6"},
  {person_id: "P1", vehicle_id: "V3"},
  {person_id: "P2", vehicle_id: "V4"}
]

result = UpsellFinder.find_potential_upsells(policies)
puts result
