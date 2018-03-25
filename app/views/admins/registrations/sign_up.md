<h2 style="text-align: center;"><b>登録画面</b></h2>

<%= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
  <%= devise_error_messages! %>

<table border="" class="table_a">

  <tr>
    <th class="a_edit_ad_th">
      管理人：&emsp;
    </th>
    <td class="a_edit_td">
      <%= f.text_field :pic_name, autofocus: true, autocomplete: "pic_name", class: "a_edit_box" %>
  </tr>

  <tr>
    <th class="a_edit_ad_th">
      你的爱好：&emsp;
    </th>
    <td class="a_edit_td">
      <%= f.text_field :aihao, autofocus: true, autocomplete: "aihao", class: "a_edit_box" %>
  </tr>

  <tr>
    <th class="a_edit_ad_th">
      你爱吃什么：&emsp;
    </th>
    <td class="a_edit_td">
      <%= f.text_field :aichi, autofocus: true, autocomplete: "aichi", class: "a_edit_box" %>
  </tr>

  <tr>
    <th class="a_edit_ad_th">
      你的座右铭：&emsp;
    </th>
    <td class="a_edit_td">
      <%= f.text_field :zayu, autofocus: true, autocomplete: "zayu", class: "a_edit_box" %>
  </tr>

  <tr>
    <th class="a_edit_ad_th">
      设定你的ID：&emsp;
    </th>
    <td class="a_edit_td">
      <%= f.text_field :id_kari, autofocus: true, autocomplete: "id_kari", class: "a_edit_box" %>
  </tr>

  <tr>
    <th class="a_edit_ad_th">
      邮件：&emsp;
    </th>
    <td class="a_edit_td">
      <%= f.email_field :email, autofocus: true, autocomplete: "email", class: "a_edit_box" %>
    </td>
  </tr>

  <tr>
    <th class="a_edit_ad_th">密码
        <% if @minimum_password_length %>
        <em>(<%= @minimum_password_length %> 字以上)：</em>
        <% end %>
    </th>
    <td class="a_edit_td">
        <%= f.password_field :password, autocomplete: "off", class: "a_edit_box" %>
      </td>
    </tr>

    <tr>
      <th class="a_edit_ad_th">把密码再输入一边：&emsp;</th>
      <td class="a_edit_td">
        <%= f.password_field :password_confirmation, autocomplete: "off", class: "a_edit_box" %>
      </td>
    </tr>
</table>

<table class="">
  <%= f.submit "管理者登録", class: "btn btn-success", style: "font-size:20px; padding: 8px 50px; margin-left: 43%;margin-top: 2%;" %>
</table>

<% end %>

<%= render "admins/shared/links" %>
<hr>
<hr>
<hr>
<hr>
<hr>