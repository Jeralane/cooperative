class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find params[:id]
  end

  def new
    @member = Member.new
    @membership_types = MembershipType.all
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:notice] = "Members created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @member = Member.find(params[:id])
    @membership_types = MembershipType.all
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(member_params)
      flash[:notice] = "Member updated successfully"
      redirect_to(:action => 'show', :id => @member.id)
    else
      render('edit')
    end
  end

  private
  def member_params
    params.require(:member).permit(:code, :name, :membership_type)
  end
end
