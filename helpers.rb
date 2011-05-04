module FrankHelpers


  def images(group)
    1.upto(group.size).map{|a| "%02d" % a }.map{|number| "#{group.path}/jo_by_#{number}.jpg"}
  end

  def image_tag(group, path)
    w = IMAGES[path][:w]
    h = IMAGES[path][:h]
    style = ''
    style << "margin-top: #{(group.height - h) / 2}px" if h < group.height
    "<img alt='joexposito' src='/images/#{path}' width='#{w}' height='#{h}' style='#{style}' />"
  end

  def group_width(group, padding = 80)
    total = padding
    images(group) {|img| total += IMAGES[img][:w] + padding }
    total
  end


  BEING = OpenStruct.new({:title => 'being youssoupha', :path => 'being'})
  BEING.size = 61
  BEING.height = 567

  IMAGES = {}
  IMAGES['being/jo_by_01.jpg'] = {:w => 852, :h => 567}
  IMAGES['being/jo_by_02.jpg'] = {:w => 852, :h => 567}
  IMAGES['being/jo_by_03.jpg'] = {:w => 377, :h => 567}
  IMAGES['being/jo_by_04.jpg'] = {:w => 425, :h => 567}
  IMAGES['being/jo_by_05.jpg'] = {:w => 756, :h => 567}
  IMAGES['being/jo_by_06.jpg'] = {:w => 756, :h => 567}
  IMAGES['being/jo_by_07.jpg'] = {:w => 756, :h => 567}
  IMAGES['being/jo_by_08.jpg'] = {:w => 709, :h => 567}
  IMAGES['being/jo_by_09.jpg'] = {:w => 756, :h => 567}
  IMAGES['being/jo_by_10.jpg'] = {:w => 425, :h => 567}
  IMAGES['being/jo_by_11.jpg'] = {:w => 377, :h => 567}
  IMAGES['being/jo_by_12.jpg'] = {:w => 852, :h => 567}
  IMAGES['being/jo_by_13.jpg'] = {:w => 852, :h => 567}
  IMAGES['being/jo_by_14.jpg'] = {:w => 377, :h => 567}
  IMAGES['being/jo_by_15.jpg'] = {:w => 425, :h => 567}
  IMAGES['being/jo_by_16.jpg'] = {:w => 425, :h => 567}
  IMAGES['being/jo_by_17.jpg'] = {:w => 377, :h => 567}
  IMAGES['being/jo_by_18.jpg'] = {:w => 567, :h => 377}


end