# README

### Master Branch
Master branch contains user and profile setup - working.
There are some items to change in the profile when adding the code to the spareme app.

- DONE change country code to country 
- DONE change house number to street number
- change street number to string
- change postcode to string
- DONE add business name to profile as string (not a required field)
- add business number to profile as string (not a required field)

### Parts Request Branch
parts request model
- id
- part_name:string
- part_description:text
- car_make:string
- car_model:string
- car_series:string
- car_year:string
- offered_by:references (user_id)
- accepted_by:references (user_id)

rails g model PartsRequest part_name:string part_description:text car_make:string car_model:string car_series:string car_year:string offered_by:references accepted_by:references