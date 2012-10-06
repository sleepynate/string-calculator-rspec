class StringCalc

  def add(str)
    ### 1
    # return 0

    ### 2
    # if str
    #   str.to_i
    # else
    #   0
    # end

    ### 3
    # if str
    #   a = str.split ','
    #   a[0].to_i + a[1].to_i
    # else
    #   0
    # end

    ### 4
    # if str
    #   a = str.split ","
    #   a.reduce(0) {|x,y| x.to_i + y.to_i}
    # else
    #   0
    # end

    ### 5
    if str
      a = str.split /(,|\n)/
      a.reduce(0) {|x,y| x.to_i + y.to_i}
    else
      0
    end
  end
  
end

