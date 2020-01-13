class TodolistsController < ApplicationController
  def new
  	#Viewとインスタンス変数を関連付けるために
  	#空のモデルオブジェクトを生成する
  	@list = List.new
  end

  def create
  	#ストロングパラメータを使用
  	list = List.new(list_params)#listインスタンスでListメソッドでnew(新規投稿)を呼び出し引数でlist_paramsが呼び出される
  	list.save #DBへ保存する
  	redirect_to todolist_path(list.id) #詳細画面へリダイレクト
  end

  def index
  		#@listsにList内データを全て格納(代入)する
  	@lists = List.all
  end

def show
	@list =List.find(params[:id])

end

def edit
	@list =List.find(params[:id])
end

def update
	list =List.find(params[:id])
	list.update(list_params)
	redirect_to todolist_path(list.id)
end

  private#ストロングパラメータ[private]はコントローラーファイルの1番下
         #のendの上に置く

  def list_params
  	params.require(:list).permit(:title, :body, :image)
  end
end
