$gid

class ManageController < ApplicationController

def creategroup
@gp=Group.new
end


def groupselcet
	@gps=Group.new
@gpall=Group.all
end

def select_member
@a=params.to_a
@b=@a[2][1].to_a
@c=@b[0][1]
$gid=params[:group][:glabel]
@n=Group.find(@c)
@x=Group.find(@c).members
end



def search



end



end
