# README

『　view - devise - registrations - edit.html.erb 』

«一番上に記入してあったコマンド。rails s して確認すると”user”と表示される。必要か不明なためここに保管しておく»
	<%= resource_name.to_s.humanize %>

«最下部のアカウント削除コマンド»
<div class="edit_bottom">
  <h3>アカウントを削除</h3>

<p> <%= button_to "Cancel my account", registration_path(resource_name), data: { confirm: "Are you sure?" }, method: :delete %></p>
</div>


admin_edit_viewの最下部に記入されていた退会ボタン
    <h3>Cancel my account</h3>

    <p>Unhappy? <%= button_to "Cancel my account", registration_path(resource_name), data: { confirm: "Are you sure?" }, method: :delete %></p>

    <%= link_to "Back", :back %>


adminのログイン画面最下部に記載されていた新規登録画面へ飛ぶためのタグ。記述したら新規登録画面へ進めるようになる。
  <%= render "admins/shared/links" %>




    <div class="category-control"><%= t.select :category, Product::CATEGORY_LIST.to_a, {}, {class:"form-control"} %>
    </div>


⬇️ チェックボックス（product_new）

<%= t.check_box :category,{},checked_value = "true",unchecked_value = "false"  %>
<%= label_tag :category, "music" %>
<%= t.check_box 'category',{},checked_value = "true",unchecked_value = "false" %>
<%= label_tag :category, "aaaaaa" %>
<%= t.check_box 'category',{},checked_value = "true",unchecked_value = "false" %>
<%= label_tag :category, "cccccccc" %>
