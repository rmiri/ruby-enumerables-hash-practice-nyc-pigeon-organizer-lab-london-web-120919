def nyc_pigeon_organizer(data)
  # write your code here!
  newHash = {}
  data[:gender][:male].each { |e|
  newHash[e] = Hash.new
    newHash[e][:color] = nil
    newHash[e][:gender] = "male"
    newHash[e][:lives] = nil
  }
  data[:gender][:female].each { |e|
  newHash[e] = Hash.new
    newHash[e][:color] = nil
    newHash[e][:gender] = "female"
    newHash[e][:lives] = nil
  }
  # data[:color].each { |pColor,pName| #pName is an array
  #   newHash.each { |hName,hValue| #hName are hashes from the pigeons names, and Hvalue are their atributes
  #     if pName.include?(hName) #working until here, should I loop inside it?
  #       newHash[hName][:color] = pColor #My problem is, it only adds the last color
  #       # hValue.each { |key,thisshit|
  #       # thisshit.push(pColor)
  #       # }
  #     end
  #   }
  data[:lives].each { |pColor,pName| #pName is an array
  newHash.each { |hName,hValue| #hName are hashes from the pigeons names, and Hvalue are their atributes
    if pName.include?(hName) #working until here, should I loop inside it?
      newHash[hName][:lives] = pColor #My problem is, it only adds the last color
        # hValue.each { |key,thisshit|
        # thisshit.push(pColor)
        # }
    end
  }

  }
  newHash
end
