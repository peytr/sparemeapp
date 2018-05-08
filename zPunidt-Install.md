## Install Pundit
https://www.youtube.com/watch?v=LErrQ5bT_Nk

add profile_policy.rb to app/policies folder

add the following class to the profile_policy.rb file
```
class ProfilePolicy < ApplicationPolicy
end
```
add include Pundit to the top of Application Controller

add authorize @profile to the required methods inside the profile controller
shortcut way is to add to the set_request method in private like I have in the requests controller
```
def set_request
    @request = Request.find(params[:id])
    authorize @request
end
```
that way anything passed in to set_request at the top of the file will get authorize @request
can also add manually to any other method as required

add the same methods to the profile_policy.rb as follows
```
def edit?
    true
end
```

add authorize @profile to every method in the profile controller to be locked down __MAY CHANGE__

add to the top of the profile controller, the unless devise lets devise do its thing without pundit interfering
```
after_action :verify_authorized, unless: :devise_controller?
```
can move the above to application controller to lock down everything (have done this)

in the profiles/show.html.erb
add the following to the edit link
```
<% if policy(Profile).edit? %>
    <%= link_to  "Edit Profile", profile_edit_path  %>
<% end %>
```
add the same to other links as required

to allow specific user access
add the following to the required methods in the controller
```
user.present? && user == record.user
```
or create the following method in private
```
def profile
    record
end
```
and the user access statement would change to
```
user.present? && user == profile.user
```

can also use inside a method
```
user.present?
```

at 17:35 of the youtube video (linked at top of page) can add admin rights to any method also