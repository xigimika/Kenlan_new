<h2 style="text-align: center;"><b>登録画面</b></h2>

<%= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
  <%= devise_error_messages! %>

<table border="" class="table_t">

   <tr>
        <th class="new_th">
          表示名：&emsp;
        </th>
        <td colspan="2" class="new_td">
          <%= f.text_field :pic_name, autofocus: true, autocomplete: "pic_name", class: "new_box" %>
        </td>
    </tr>

    <tr>
        <th class="new_th">
          苗字：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :last_name, autofocus: true, autocomplete: "last_name", class: "new_box" %>
        </td>
        <th class="new_th">
          名前：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :first_name, autofocus: true, autocomplete: "first_name", class: "new_box" %>
        </td>
    </tr>

    <tr>
        <th class="new_th">
          苗字かな：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :last_name_kana, autofocus: true, autocomplete: "last_name_kana", class: "new_box" %>
        </td>
        <th class="new_th">
          名前かな：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :first_name_kana, autofocus: true, autocomplete: "first_name_kana", class: "new_box" %>
        </td>
    </tr>

    <tr>
        <th class="new_th">
          会社名：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :company_name, autofocus: true, autocomplete: "company_name", class: "new_box" %>
        </td>
        <th class="new_th">
          会社名かな：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :company_name_kana, autofocus: true, autocomplete: "company_name_kana", class: "new_box" %>
        </td>
    </tr>

    <tr>
        <th class="new_th">
          郵便番号：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :zip, autofocus: true, autocomplete: "zip", class: "new_box" %>
        </td>
        <th class="new_th">
          電話番号：&emsp;
        </th>
        <td class="new_td">
          <%= f.text_field :tell, autofocus: true, autocomplete: "tell", class: "new_box" %>
        </td>
    </tr>

    <tr>
        <th class="new_th">
          住所：&emsp;
        </th>
        <td  colspan="3" class="new_td"><%= f.text_field :address, autofocus: true, autocomplete: "address", class: "new_box" %>
        </td>
    </tr>

    <tr>
        <th class="new_th">
          メールアドレス：&emsp;
        </th>
        <td colspan="3" class="new_td">
          <%= f.email_field :email, autofocus: true, autocomplete: "email", class: "new_box" %>
        </td>
    </tr>

    <tr>
      <th class="new_th">パスワード：<br>
        <% if @minimum_password_length %>
          <em style="font-size: 14px;">( <%= @minimum_password_length %> 文字以上で設定してください )</em>
        <% end %>
      </th>
      <td class="new_td">
        <%= f.password_field :password, autocomplete: "off", class: "new_box_pass" %>
      </td>
    </tr>

    <tr>
      <th class="new_th">もう一度パスワードを入力してください：&emsp;</th>
      <td class="new_td"><%= f.password_field :password_confirmation, autocomplete: "off", class: "new_box_pass" %></td>
    </tr>
</table>

<table class="">
    <%= f.submit "登 録", class: "btn btn-success", style: "font-size:20px; margin-left: 65%;padding: 8px 50px;" %>
</table>

<% end %>


<%= render "devise/shared/links" %>

<hr>
<hr>
<hr>
<hr>
<hr>