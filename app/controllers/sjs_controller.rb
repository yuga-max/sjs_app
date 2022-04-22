class SjsController < ApplicationController
  def index
    @sjs = Sj.all
  end
  
  def new
    @sj = Sj.new
  end
  
  def create
    @sj = Sj.new(params.require(:sj).permit(:name, :title, :startday, :finishday))
      if @sj.save
        flash[:notice] = "スケジュールを作成しました"
        redirect_to :sjs
      else
        flash.now[:notice] = "スケジュールを作成出来ませんでした"
        render "new"
      end
  end
  
  def show
    @sj = Sj.find(params[:id])
  end
  
  def edit
    @sj = Sj.find(params[:id])
  end
  
  def update
    @sj = Sj.find(params[:id])
     if @sj.update(params.require(:sj).permit(:name, :title, :startday, :finishday))
       flash[:notice] = "スケジュールを更新しました"
       redirect_to :sjs
     else
       flash.now[:notice] = "スケジュールを更新出来ませんでした"
       render "edit"
     end
  end
  
  def destroy
    @sj = Sj.find(params[:id])
    @sj.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :sjs
  end
  
  end
  