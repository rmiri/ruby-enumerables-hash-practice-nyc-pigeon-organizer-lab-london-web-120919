def nyc_pigeon_organizer(data)
  # write your code here!
  newHash = {}
  data[:gender][:male].each { |e|
  newHash[e] = Hash.new
  #  newHash[e][:color] = nil
    newHash[e][:gender] = "male"
  #  newHash[e][:lives] = nil
  }
  data[:gender][:female].each { |e|
  newHash[e] = Hash.new
  #  newHash[e][:color] = nil
    newHash[e][:gender] = "female"
  #  newHash[e][:lives] = nil
  }
  data[:lives].each { |pLives,pName| #pName is an array
  newHash.each { |hName,hValue| #hName are hashes from the pigeons names, and Hvalue are their atributes
    if pName.include?(hName) #working until here, should I loop inside it?
      newHash[hName][:lives] = pLives #My problem is, it only adds the last color
        # hValue.each { |key,thisshit|
        # thisshit.push(pColor)
        # }
    end
  }

  }
  newHash
end
