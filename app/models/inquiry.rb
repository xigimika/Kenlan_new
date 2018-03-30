class Inquiry < ApplicationRecord

# attr_accessor :name,:email,:text,:name_kana,:sex,:company_name,:address,:tell,:position,:naiyou

validates :name, :presence => {:message => '名前を入力してください'}
validates :name_kana, :presence => {:message => '名前のふりがなを入力してください'}
validates :sex, :presence => {:message => '性別を選択してください'}
validates :company_name, :presence => {:message => '法人名を入力してください'}
validates :address, :presence => {:message => '住所を入力してください'}
validates :tell, :presence => {:message => '電話番号を入力してください'}
validates :email, :presence => {:message => 'メールアドレスを入力してください'}
validates :naiyou, :presence => {:message => 'お問い合わせ内容を選択してください'}
validates :text, :presence => {:message => 'お問い合わせ内容の詳細を入力してください'}

end
