class KksitesController < ApplicationController
 
   def index
   end
   def profile
   end
   def new
    @kksite = Kksite.new
   end
   def create
      kksite = Kksite.new(kksite_params)
      # current_user.idはユーザーidを指す
      kksite.user_id = current_user.id
      if kksite.save
        # もし成功したらindexアクションに投稿される
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end
   #whereメソッドを使うことで其々のサイト内にあるhtmlの文法つまりdiv要素等を独立させることができる。分かりやすく言うと例えば鹿児島市のサイトに投稿内容が3つあったら3つのdivが反映され、かつ他の市のサイトは鹿児島市のdiv要素が加えられない。鹿児島市のサイトの投稿内容が3つで姶良市のサイトの投稿内容が2つの場合鹿児島市のdiv要素は3つで姶良市のdiv要素は2つでdiv要素が其々の市だけ反映するよう独立している。
   def kagoshimashi
    @kagoshimashi=Kksite.where(cck:"kagoshimashi")
   end
   def hiokishi
    @hiokishi=Kksite.where(cck:"hiokishi")
   end
   def airashi
    @airashi=Kksite.where(cck:"airashi")
   end
   def kirishimashi
    @kirishimahsi=Kksite.where(cck:"kirishimashi")
   end
   def minamisatsumashi
    @minamisatsumashi=Kksite.where(cck:"minamisatsumashi")
   end
   def minamikyushushi
    @minamikyushushi=Kksite.where(cck:"minamikyushushi")
   end
   def makurazakishi
    @makurazakishi=Kksite.where(cck:"makurazakishi")
   end
   def itikikushikinoshi
    @itikikushikinoshi=Kksite.where(cck:"itikikushikinoshi")
   end
   def satsumasendaishi
    @satsumasendaishi=Kksite.where(cck:"satsumasendaishi")
   end
   def ibusukishi
    @ibusukishi=Kksite.where(cck:"ibusukishi")
   end
   def satsumatyou
    @satsumatyou=Kksite.where(cck:"satsumatyou")
   end
   def yusuityou
    @yusuityou=Kksite.where(cck:"yusuityou")
   end
   def soshi
    @soshi=Kksite.where(cck:"soshi")
   end
   def shibushishi
    @shibushishi=Kksite.where(cck:"shibushishi")
   end
   def tarumizushi
    @tarumizushi=Kksite.where(cck:"tarumizushi")
   end
   def kanoyashi
    @kanoyashi=Kksite.where(cck:"kanoyashi")
   end
   def osakityou
    @osakityou=Kksite.where(cck:"osakityou")
   end
   def akuneshi
    @akuneshi=Kksite.where(cck:"akuneshi")
   end
   def izumishi
    @izumishi=Kksite.where(cck:"izumishi")
   end
   def isashi
    @isashi=Kksite.where(cck:"isashi")
   end
   def nagashimatyou
    @nagashimatyou=Kksite.where(cck:"nagashimatyou")
   end
   def kimotsukityou
    @kimotsukityou=Kksite.where(cck:"kimotsukityou")
   end
   def kinkoutyou
    @kinkoutyou=Kksite.where(cck:"kinkoutyou")
   end
   def minamiosumityou
    @minamiosumityou=Kksite.where(cck:"minamiosumityou")
   end
   def higashikushiratyou
    @higashikushiratyou=Kksite.where(cck:"higashikushiratyou")
   end
   # 管理者だけが見れるサイトにデータベースを全て格納させるための記述
   def secrt
    @kksites=Kksite.all
   end
   # 投稿したもの(画像や内容)を消すための記述
   def destroy
    kksite = Kksite.find(params[:id])
    kksite.destroy
    redirect_to action: :index
    
   end
   
  private
   def kksite_params
     params.require(:kksite).permit(:cc,:cck,:image,:user_id)
   end
   
end
