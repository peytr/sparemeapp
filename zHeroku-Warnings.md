remote: ###### WARNING:
remote:        You set your `config.active_storage.service` to :local in production.
remote:        If you are uploading files to this app, they will not persist after the app
remote:        is restarted, on one-off dynos, or if the app has multiple dynos.
remote:        Heroku applications have an ephemeral files system. To
remote:        persist uploaded files, please use a service such as S3 and update your Rails
remote:        configuration.
remote:        
remote:        For more information can be found in this article:
remote:          https://devcenter.heroku.com/articles/active-storage-on-heroku
remote:        
remote: 
remote: ###### WARNING:
remote:        We detected that some binary dependencies required to
remote:        use all the preview features of Active Storage are not
remote:        present on this system.
remote:        
remote:        For more information please see:
remote:          https://devcenter.heroku.com/articles/active-storage-on-heroku
remote:        
remote: 
remote: ###### WARNING:
remote:        No Procfile detected, using the default web server.
remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
remote:        https://devcenter.heroku.com/articles/ruby-default-web-server


__Request info for offer show__
<p>
    <p>Part Name: <%= @request.part_name %></p>
</p>
<p>
    <p>Part Description: <%= @request.part_description %></p>
</p>
<p>
    <p>Your Car: <%= @request.car_year %> <%= @request.car_make %> <%= @request.car_model %> <%= @request.car_series %> </p>
</p>
<p>
    <p>Images: <%= @request.image_data %></p>
</p>

__was in application.html.erb__
    <% if user_signed_in? %>
        <%= link_to "Home", root_path %> |
        <%= link_to 'Edit Profile', profile_edit_path %> |
        <%= link_to "Logout", destroy_user_session_path, method: :delete %>
    <% else %>
        <%= link_to "Login", new_user_session_path %> |
        <%= link_to "Sign up", new_user_registration_path %>
    <% end %>

__link if statement__
<% if current_user == Request.where(user_id: current_user) %>