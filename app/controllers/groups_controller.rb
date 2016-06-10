class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)

    return redirect_to @group, notice: 'Group was successfully created.' if @group.save
    render :new
  end

  def update
    return redirect_to @group, notice: 'Group was successfully updated.' if @group.update(group_params)
    render :edit
  end

  def destroy
    @group.destroy
    redirect_to groups_url, notice: 'Group was successfully destroyed.'
  end

  private
    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:name, :size)
    end
end
