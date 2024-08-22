# The Pack App 🐶
## ThePackApp
ThePackApp
- Main function that runs contentView

ContentView
- Starts at the survey page which leads to tab bar view
- Holds customTitle() and blueGradient() functions

TabBarView
- Has a tab bar at the bottom that will connect all the different pages

Other
- App name set to 'The Pack'
- AppIcon in assets used to set app icon

## General
Splash Launch Page
- Pops up shortly
- App logo, app name, swift logo, and paw prints

Survey Page
- Asks for user info (personal, their dogs, experience, etc)
- Able to signup for an account or signin to an account
- Declaie and initialize username global vars
- Leads to tab bar view when done
    
Home Page
- Includes a random dog fun fact and joke
- Holds bubbleTitle() and bubbleText() functions

Profile Page
- Displays profile info and profile pic
- Able to change profile info and profile pic
- Holds largeBlueGradient(), textAnswer(), displayInfo() functions
- Holds ImagePicker struct and loadImage() function

Mode Data
- Declare and initialize arrays from JSON files
- Holds load() function for initializing arrays from JSON files

ModelAndRescources
- Every feature has this folder that holds their object and JSON file data

## DogInfo Feature
DogInfo List Page
- Consists of 9 DogInfoRows
- DogInfoRows have headshot pic, breed, and life stage

DogInfo Detail Page
- Breed
- FullDogImage; bigger full body pic
- Life stage and age
- Description, medical advice, food advice, and things to watch out for
- Holds displayInfoHoriz(), displayInfoVert(), displayInfoList()

## PostBoard Feature
PostBoard List Page
- Consists of 9 PostRows
- Posts have a icon, title, and category
- Post button without functionality

Post Detail Page
- Category, title, and full description
- CommentSection: Able to see 2 other comments and comment yourself
- Holds customRectangle() function
* (Maybe will have photos)

## Walker Feature
Walker List Page
- Consists of 9 WalkerRows
- WalkerRows have headshot pic, name, and icon
- Become Walker button without functionality

Walker Detail Page
- Name
- HeadWalkerImage; bigger headshot pic
- Bio and description
- General location, price, rating, email, and phone number

## Team
- Estuardo
- Bradley
- Fatoumata
- Nate
- Trendel
- Pamela
