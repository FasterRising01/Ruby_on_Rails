class TodolistsController < ApplicationController
  def new
  	#Viewとインスタンス変数を関連付けるために
  	#空のモデルオブジェクトを生成する
  	@list = List.new
  end

  def creat
  	#ストロングパラメータを使用
  	list = List.new(list_params)#listインスタンスでListメソッドで
  	　　　　　　　　　　　　　　　#new(新規投稿)を呼び出し引数で
                               #list_paramsが呼び出される
  	#DBへ保存する
  	list.save
  	#topへリダイレクト
  	redirect_to "/top"
  end
  private#ストロングパラメータ[private]はコントローラーファイルの1番下
         #のendの上に置く

  def list_params
  	params.require(:list).permit(:title, :body)
  end
end
