Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "top"=> "homes#top"
     #.../todolistsというURLにPOSTメソッドでリクエストしたとき
     #todolistsコントローラーのcreatアクションが呼び出される
  post "todolists" => "todolists#create"

  get "todolists" => "todolists#index"

  get "todolists/:id" => "todolists#show",as: "todolist"
  #.../todolist/1や ~/todolist/3に該当する
  #as:"todolists"は"todolists#show"の設定をtodolistsとして利用できるの意
  get "todolists/:id/edit" => "todolists#edit", as:"edit_todolist"
  #新規投稿はPOSTだが更新の場合はPATCHで指定する
  patch "todolists/:id" => "todolists#update", as: "update_todolist"
end
