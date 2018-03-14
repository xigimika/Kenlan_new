# README

『　view - devise - registrations - edit.html.erb 』

«一番上に記入してあったコマンド。rails s して確認すると”user”と表示される。必要か不明なためここに保管しておく»
	<%= resource_name.to_s.humanize %>

«最下部のアカウント削除コマンド»
<div class="edit_bottom">
  <h3>アカウントを削除</h3>

<p> <%= button_to "Cancel my account", registration_path(resource_name), data: { confirm: "Are you sure?" }, method: :delete %></p>
</div>



