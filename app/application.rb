class Application

  def call(env)
    resp = Rack::Response.new
######### pick 3 random nums
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
######### print the 3 nums out
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
######### check if numbers are all the same; let user know if they won or not
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end    
#########
    resp.finish
  end
end
