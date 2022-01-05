class FruityviceService
    include HTTParty
  
    @base_url = "https://www.fruityvice.com/api/fruit"
    
    def self.get_fruit(fruit)
      
      response = HTTParty.get("#{@base_url}/#{fruit}", 
        headers: { 
          'Content-Type' => 'application/json' 
        }
      )
      JSON.parse(response.body)
    end
end