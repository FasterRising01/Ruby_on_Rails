Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "top"=> "homes#top"
     #.../todolistsというURLにPOSTメソッドでリクエストしたとき
     #todolistsコントローラーのcreatアクションが呼び出される
  post "todolists" => "todolists#creat"
end
