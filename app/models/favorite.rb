class Favorite < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  # def random_pic
  #   random = Random.new
  #   pic_num = random.rand(1..10)
  #   if pic_num == 1
  #     <img src="http://ncse.com/files/Pope_Francis.jpg"/>
  #   elsif pic_num == 2
  #     <img src="http://www.thenetworkforgood.org/t5/image/serverpage/image-id/783i8B118796C85E8B7A/image-size/original?v=mpbl-1&px=-1"/>
  #   elsif pic_num == 3
  #     <img src="http://www.redletterchristians.org/wp-content/uploads/jesus_thumbs-up.jpg"/>
  #   elsif pic_num == 4
  #     <img src="http://images6.fanpop.com/image/photos/38200000/-Daenerys-wins-daenerys-targaryen-38259927-268-250.gif"/>
  #   elsif pic_num == 5
  #     <img src="http://www.coreypadveen.com/wp-content/uploads/2014/11/thumbs-up-borat.jpg"/>
  #   elsif pic_num == 6
  #     <img src="http://gdb.voanews.com/07136E31-E8B7-4FF5-A1D7-936D79B8A682_mw1024_s_n.jpg"/>
  #   elsif pic_num == 7
  #     <img src="http://www.peanutmom.com/wp-content/uploads/2014/04/chuckthumbs.jpg"/>
  #   elsif pic_num == 8
  #     <img src="http://nimg.sulekha.com/business/original700/president-barack-obama-2010-9-6-16-20-15.jpg"/>
  #   elsif pic_num == 9
  #     <img src="https://s-media-cache-ak0.pinimg.com/736x/4f/8e/05/4f8e053f9451daf3efbffea96936f430.jpg"/>
  #   else
  #     <img src="http://media.washtimes.com.s3.amazonaws.com/media/image/2014/12/23/2ff010ce47590832690f6a70670042f8.jpg"/>
  #   end
  # end

end
