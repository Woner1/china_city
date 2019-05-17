namespace :regions do
  desc "china city data"
  task seed: :environment do
    # provinces=File.read('./lib/region/provinces.json')
    # @provinces = JSON.parse(provinces)
    #
    # cities=File.read('./lib/region/cities.json')
    # @cities = JSON.parse(cities)
    #
    # areas=File.read('./lib/region/areas.json')
    # @areas = JSON.parse(areas)
    #
    # streets=File.read('./lib/region/streets.json')
    # @streets = JSON.parse(streets)

    villages=File.read('./lib/region/villages.json')
    @villages = JSON.parse(villages)

    # if Province.count==0 && City.count==0 && Area.count==0
      # @provinces.each do |province|
      #   Province.create(code: province["code"],name: province["name"])
      # end
      #
      # @cities.each do |city|
      #   City.create(code: city["code"],name: city["name"],provinceCode: city["provinceCode"])
      # end

      # @areas.each do |area|
      #   Area.create(code: area["code"],name: area["name"],cityCode: area["cityCode"],provinceCode: area["provinceCode"])
      # end

      # @streets.each do |street|
      #   Street.create(code: street["code"],name: street["name"],areaCode: street["areaCode"],cityCode: street["cityCode"],provinceCode: street["provinceCode"])
      # end


    @villages.each do |village|
      Village.create(code: village["code"],name: village["name"],areaCode: village["areaCode"],cityCode: village["cityCode"],provinceCode: village["provinceCode"],streetCode: village["streetCode"])
    end


    # end

  end
end