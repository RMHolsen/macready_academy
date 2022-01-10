## To-Do
-- first, ~~test your assumptions that the very basic architecture works as expected~~
-- ~~ first maybe figure out what the attributes of a course are, how they fit into the courseload model, and how THAT architecture works. Maybe.~~
-- Maybe just make sure your user-portfolio-entries section works? As a start? Small bites?

## Stretch Goals 
-- add quests

## Architecture
Users and Sessions
A Portfolio belongs_to a User
A Portfolio has_many entries
A Courseload belongs_to a User
A Courseload has_many Courses

User
    t.string :username 
    t.string :email 
    t.string :password_digest 
    t.text :profile
    t.string :goal 

Portfolio
    t.belongs_to :user
    t.string :name 
    t.text :description 

Entry 
    t.belongs_to :portfolio
    t.string :title
    t.string :medium
    t.string :subject
    t.string :style
    t.integer :hours
    (anything else? colors?)

Courseload 
    t.belongs_to :user
    

## Bugs 

## Notes 

## Requirements