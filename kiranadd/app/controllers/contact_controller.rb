class ContactController < ApplicationController
 def home
    	@member=Member.all
      end

  def new
  	@member =Member.new
  end
  def create
  	 @member =Member.new
     
  	 @member.update_attributes(params[:member])
  	   if @member.save
  		    redirect_to :action =>"home"
  	   else
  		    render :action =>"create"
  	   end
  end

  
    def update
        @memb=Member.find(params[:all])
        @memb.update_attributes(params[:member])
        if @memb.save
          redirect_to :action =>"show"
        end 
      
    end  
    
    def dispaly  
     #@b=params.to_a
        params.delete("controller")
        params.delete("action")
        params.delete("checkall")
        #@a=@n.class
      # @address=Member.find(@n)   
      end  
    
      def index
  

  end
def newgroup
@gp=Group.new

end

def updategroup
@gp=Group.new
@gp.update_attributes(params[:gp])
if @gp.save
  redirect_to :action=>"addmembertogroup"
end
end

def addmembertogroup
@meall=Member.all
end

def add
params.delete("controller")
params.delete("action")
params.delete("checkall")
@g=Group.find($gid)

params.each do |keys,value|
@g.members<<Member.find(keys)
end
end

def search

end



end
