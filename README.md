# SpareMe - Car Spare Parts Marketplace
## https://spare-me.com.au
SpareMe is a community oriented, two sided marketplace for car enthusiasts, automotive professionals and the everyday diy-er. The main idea behind SpareMe is to remove the pain of searching for car spare parts, instead having the spare parts market come to you.

## Contents
- **[Problem](#Problem)**
- **[Solution](#Solution)**
- **[Trello Board](#TrelloBoard)**
- **[User Stories](#UserStories)**
- **[Personas](#Personas)**
- **[Entity Relationship Diagram](#ERD)**
- **[Mood Board](#Moodboard)**
- **[Inspiration](#Inspiration)**
- **[Wireframes](#Wireframes)**
- **[Features](#Features)**
- **[Ruby Gems](#RubyGem)**
- **[Challenges](#Challenges)**
- **[Coding](#Coding)**
- **[Optimisations](#Optimisations)**
- **[Final Product](#FinalProduct)**
- **[Presentation Slides](#PresentationSlides)**

## Problem
Finding specific car parts new or used can be an expensive, time consuming and difficult process. New parts from local dealers are usually convenient but overpriced. Used parts aren't always local and can be hard to find. 

## Solution
SpareMe will provide a platform for parts seekers / buyers to list their parts requirements giving the spare parts market an oppotunity to come to the customer. 
At SpareMe do away with the hassle of parts searching. Post the part you require, your vehicle details and photos if any and let the market come to you. Sellers will contact you if they have a suitable part available, you decide who you want to shop with.

## Trello Board
[Trello Board - SpareMe - Car Spare Parts Seeker](https://trello.com/b/Z573GKaa)

![Trello Image](storage/readme-images/trello-02.png)

My trello board is the main driver of my project management. It allowed me to plan ahead with User Stories, User Workflow, Models, Controllers, ERD and Wireframes.

## User Stories
My user stories are composed of 3 target markets (Guests, Buyers and Sellers). Guests are the people who have not signed up for the app and are potential customers for the two-sided marketplace. Buyers and Sellers are the registered users who can benefit from all the features of the site. Also, since it is a two-sided marketplace, a buyer can be a seller and a seller can be a buyer.

### Buyers
- As a parts buyer, I want to find a part for my car online, so that I don't have to drive all over town.
- As a parts buyer, I want to choose the cheapest option available, so that I can save money.
- As a parts buyer, I want choose the fastest option available, so that I can have my part sooner.
- As a parts buyer, I want to know what information is required, so that I get the right part the first time.
- As a parts buyer, I want have sellers contact me if they need further information, so that I am sure to get the right part.
- As a parts buyer, I want to have the option to pick up the part, so that I can ensure it is the right part for my car before I purchase it.
- As a parts buyer, I want the option to contact the seller by message or phone, so that I can get more information if required.
- As a parts buyer, I want the option to have the part shipped if possible, so that I don't have to pick the part up.
- As a parts buyer, I want pay securely online, so that I know my financial details are safe.

### Sellers
- As a parts seller, I want to be able to easily search through people seeking parts, so that I can give them the option to buy my parts.
- As a parts seller, I want to see what other offers have been posted to the parts buyer, so that I can offer a better deal if I am able to.
- As a parts seller, I want to have the option to post the item or have the buyer pick it up, so that I don't have to try and post things that are too hard to ship.
- As a parts seller, I want to get paid straight away, so that I know I am not going to lose money.
- As a parts seller, I want to have the option to contact the buyer, so that I can ensure I am sending them the correct part for their car.
- As a parts seller, I want to have the option to list my businesses details, so that users can see who I am.

### Guests
- As a guest, I would like to easily sign up if I see a part I need, so that I can buy that part.
- As a guest, I want to browse parts that have been listed for sale, so that I can make the purchase without having to post as a buyer.
- As a guest, I would like to enter my car details, so that I can see what is currently available to buy for my car.

## Personas
### As a Buyer
__Racheal__
drives a 2001 model Mercedes Benz C200. She lives on a busy suburban road and parks her car on the street. Racheal came out to her car one morning and found the drivers side mirror had been broken off by someone overnight. Rachael rang the local dealership to find that a new exterior mirror will cost her $498. Not wanting to spend that much money Racheal logs onto SpareMe, posts the details of her car and required part and waits for a reply from a parts supplier.

__Larry__
restores cars as a hobby and is currently restoring a 1982 Holden Torana. Parts are available but not too easy to come by. Larry has created a profile on SpareMe and constantly posts any parts that he needs.

### As a Seller
__Bill__
owns a car wrecking business specialising in Alfa Romeo's catering to a specialised market. Due to the niche business is sometimes slow. Bill has created a business profile on SpareMe and logs in daily to check for anyone requesting parts for their Alfa that he may be able to post an offer on.

__Robert__
was driving a 2004 Ford Falcon BA. He hadn't had the car serviced for years and as a result the engine blew. Instead of spending the thousands to repair the car Robert has decided to strip the car and sell it for parts. Rob creates a seller profile on SpareMe and keeps a watch out for anyone needing some BA parts.

## User Workflow
![](storage/readme-images/workflow-02.png)

__Registration__
- User clicks on get started.
- View moves to registration page.
- User completes registration form.
- User clicks register.
- View moves to home page.

__Buyer__
- Clicks on post a required part.
- Buyer fills out part request form.
- Form must include the following:
  - part title
  - part description
  - car make, model and year
  - prompt in description to include colour, side of vehicle,
at least two photos, one of car, one of part
- Buyer clicks on list past.
- Message received on screen to confirm post submitted.
- Buyer redirected to home screen.

__Seller__
- Browses parts required posts
- Clicks on offer part.
- Seller is redirected to part offer screen.
- Top of screen contains part required post info.
- Remainder of page contains part offer form.
- Option for seller to send message to requestor for further information. (Maybe email instead of messaging)
- Seller completes form.
- Seller clicks on send offer.
- Seller sees onscreen notification that offer has been submitted and email will be sent if offer accepted.
- Seller redirected to home page.

__Buyer Offer Page__
- Buyer receives email notification that part offer has been received.
- Buyer logs in.
- Buyer is redirected to his profile page.
- Profile page includes part request information.
- Profile page includes part offer information including map of business location if part marked as pick up. (add to database)
- Button to reject offer.
- If rejected seller is sent email.
- If rejected offer is removed.
- Button to accept offer.
- If accepted buyer is redirected to payment.
- Buyer completes payment.
- Buyer is redirected to home screen.

__Buyer/Seller notifications__\
Look at option of using mail only rather than in app messaging.

## ERD
The ERD is the most critical part of my design and is essentially one of the biggest things I have done for my project. Planning my tables ahead gave me an idea of how I want to work with my Rails models. The join tables also allowed me to minimise my scope queries to just 2, namely, product categories and top viewed products.

__Users__
- id
- username
- password

__Profiles__
- id
- user_id
- first_name
- last_name
- business_name
- phone_number
- house_number
- street_name
- suburb
- state
- postcode
- country
- country_code
- latitude
- longitude

__Part Requests__
- id
- user_id
- part_name
- part_description
- make
- model
- series
- year
- offered_at
- offered_by
- accepted_by

__Part Offerings__
- id
- user_id
- parts_request_id
- price
- approved_at
- approved
- part_name
- part_description
- make
- model
- series
- year
- offered_at
- offered_by

__Invoices__
- id
- buyer_id
- part_offering_id

__Messages__
- id
- conversation_id
- user_id
- message_body
- read

__Conversations__
- id
- sender_id
- recipient_id
  
![](storage/readme-images/ERD-04.png)


## Design Inspiration and Mood Board
I first looked at the websites of the main car parts retail chains in Australia. Repco, Autobarn, Burson and Supercheap Auto. The main colour themes are black and red.

I then looked at other mainstream automotive businesses. Shannons, Peter Stevens and UltraTune. The main colour theme from these sites is Green and White.

I want to have a clean designed app so I searched pinterest for some automotive clean website designs.

[Link to Pinterest](https://pin.it/6pnff44js7yqvw)

Pinterest mood board

![Mood Board Image](storage/readme-images/moodboard-pinterest.png)

[Link to Figma](https://www.figma.com/file/RXCZRqddfEexjEAer8ezEATZ/SpareMe)

Figma mood board

![Mood Board Image](storage/readme-images/moodboard-figma.png)

## Colours and Font Choice

![Mood Board Image](storage/readme-images/colours-font.png)

## Logo
The site logo is a simple spanner in a circle to symbolise repairs. This will be the favicon. The Spare Me is not spaced but the words differentiated by a colour change.

![Mood Board Image](storage/readme-images/logo.png)

## Wireframes

### Mobile
![](storage/readme-images/wireframe-mobile.png)

### Desktop
![](storage/readme-images/wireframe-desktop.png)


## Features
- Buy and Sell Products related to Comic Culture (i.e. Superheroes, Anime, Movie characters, Cosplay, anything you see from events like Comic Conventions or Toy Conventions)
- Ability to provide Reviews and Ratings to sellers to keep the community aware of the good sellers and motivate sellers to be good sellers
- Algolia Search: Product Search by keywords to ease the difficulty of browsing and finding products
- Algolia Search with Geocoder: Product Search filtered by location radius, categories, manufacturer/publisher and specific sellers
- Shopping Cart: To ensure that buyers will have a proper place to collect their products and ease the payment process by bundling everything in one checkout.
- Watchlist: To help buyers monitor the products they are interested in without having to check out the product.
- Order Confirmation and Credit Card payments with Stripe
- Direct Messaging between Users
- Devise Security and Pundit authorizations: To ensure that all user profiles and products are secure and are only modifiable by their owners.


## Ruby Gems I used in this Project
- Devise
- Annotate
- Rspec-rails 3.6
- Shoulda-matchers
- Mailgun-ruby
- County_select
- Aws-sdk 1.3
- Fastimage
- Image_processing
- Mini_magick
- Shrine
- Stripe
- Alogilasearch-rails
- Geocoder
- Bootstrap 4
- JQuery-rails
- Font-awesome-rails
- Pundit
- Recaptcha
- Possessive


## Challenges
- My postgresql was accidentally updated from v9.6 to v10.0 which prevented me from starting my rails development server. I had to look for a fix to proceed with my development. Fortunately, I found that this is a common issue among some developers and I found the solution here: https://gist.github.com/giannisp/ebaca117ac9e44231421f04e7796d5ca

- Time boxing my all tasks was such a big challenge even though I am using an agile scrum board.

- Test-driven development ate a lot of my project time but it ensured the integrity of the most critical parts of my app.

- Figuring out how to do the Shopping Cart properly (i.e. When a user adds a product to his/her shopping cart, does the product become unavailable for other users? ..Or will the product be available to all users and the item just automatically gets deleted from the person's shopping cart when someone else buys it? )

- Figuring out the proper way of implementing join tables.

Wrong:
```
ShoppingCartItem < ApplicationRecord
  has_one :product
  has_one :shopping_cart
```
Correct:
```
ShoppingCartItem < ApplicationRecord
  belongs_to :product
  belongs_to :shopping_cart
```

## Coding

### Test Driven Development
I used RSpec to perform test-driven development with my project and was able to perform them in my Model classes and Helper classes. I tried my best to write good tests but as soon as I figured that I am running out of time, I had to make a decision to only write TDD for the most important parts of the app. Given more time with the project, I would try to write tests on everything.

### Applying the ERD to my Models
The most challenging part of creating my Rails models is figuring out if my ERD is correct, to begin with. As I was coding my models and creating tables, I found out that some of my join tables were wrong and I had to redo them to achieve the proper associations. In the end, creating my models properly saved me a lot of headaches as everything just fits into place.

### Applying the wireframe design to the Front-end
Bootstrap saved me a lot of time by making use of its Grid and Flexbox features. Despite using bootstrap, I was still able to achieve the look and feel of my wireframe. I also had to make adjustments to a lot of pages as they fit better in a responsive design.

### Mobile First Approach
To ensure that my web app will run correctly on mobile devices, I used the iPhone simulator from X-Code. I was also using Chrome developer tools to ensure that it works the same for Android devices. In the end, I was able to achieve a proper responsive design with the help of bootstrap grid and flexbox.


## <a id="Optimisations"></a>Optimisations

### Fonts and Font Sizes
I had to make late adjustments to my fonts to ensure readability of the texts. My app's logo was changed from Bangers to Oswald as there was already too much of the Bangers font in my pages itself. I also had to change my the font of my main texts from Oswald to PT Sans as the Oswald font is not very readable below 16px. Lastly, I had to make sure that the font sizes fit with PT Sans so I had to change the font sizes in some areas.


### DRY (don't repeat yourself)
Before: `Not so DRY`
```ruby
  ### Controller (ProductsController.rb)
  @comics = Product.where(category: 'Comic Books & Graphic Novels', status: 'Available').order(created_at: :desc)
  @toys = Product.where(category: 'Toys & Collectibles', status: 'Available').order(created_at: :desc)
  @costumes = Product.where(category: 'Costumes', status: 'Available').order(created_at: :desc)
  @apparel = Product.where(category: 'Clothing & Apparel', status: 'Available').order(created_at: :desc)
```

After: `A DRYer solution to querying product categories`
```ruby
  ### MODEL (Product.rb)
  # Query product by Category and Available
  scope :category, ->(category) {
    Product.where(category: category, status: 'Available').order(created_at: :desc)
  }

  ### Controller (ProductsController.rb)
  @comics = Product.category('Comic Books & Graphic Novels')
  @toys = Product.category('Toys & Collectibles')
  @costumes = Product.category('Costumes')
  @apparel = Product.category('Clothing & Apparel')
```

### Faster query
Before: `Run Time (19.4ms)`
```ruby
  ### MODEL (Product.rb)
  # Count the Product Views
  def view_count
    product_views.count
  end

  ### CONTROLLER (ProductsController.rb)
  @top_products = Product.where(status: 'Available').sort_by(&:view_count).reverse[0,12]
```

After: `Run Time (1.5ms)`
```ruby
  ### MODEL (Product.rb)
  # Query list of top products
  scope :top_products, ->(up_to_rank){
    # Find an array of top viewed products sorted in descending order
    array_of_products = Product.where(status: 'Available').left_joins(:product_views).group(:product_id).count(:buyer_id).sort_by{|k,v| v}.reverse.to_h.keys[0,up_to_rank]
    
    # Get these array of Products while preserving sort order of array
    Product.where(id: array_of_products).index_by(&:id).slice(*array_of_products).values
  }

  ### CONTROLLER (ProductsController.rb)
  @top_products = Product.top_products(12)
```

### Rubocop
- I did not have enough time to fix all the Rubocop offenses.
- As of date, I have `229 files inspected, 2347 offenses detected` in rubocop.


## Deploying to Heroku
I only had minor issues when I deployed to Heroku and was able to get the site completely running in just a few hours. In addition, I was able to customise my heroku app name using the command `heroku apps:create comic-culture-marketplace`.

### Algolia Search
One of the issues I had with Heroku was figuring out a way on how I can re-index my Products model with `Product.reindex`. I later figured out that I can do this in my seeds file which I can run on demand.


## <a id="FinalProduct"></a>Final Product

![](/docs/images/iphonex.png)

![](/docs/images/desktop.png)

## <a id="PresentationSlides"></a>Presentation Slides
[Presentation Slides - Comic Culture Marketplace](https://docs.google.com/presentation/d/1o2QC7_ktOCDTBOqADcJkFlx4SGSO1Q2kvIk3gJa8xzs/edit?usp=sharing)