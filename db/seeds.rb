# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["Bert", "Ernie", "Pogo", "Sam", "Pete"].each do |user|
  User.create(username: user)
end

Event.create(title: "$5.50 Drive-In Movie Night", description: "One of the most socially-distant ways to have fun, The West Wind Drive-In theaters in both San Jose and Concord, have reopened for nightly film screenings this week, but with new rules in place to ensure minimal contact.", date: "2020-12-15", location: "Solano 2 Drive In | 1611 Solano Way, Concord, CA", creator_id: 2) 

Event.create(title: "Free Lady Gaga 'Bad Romance' Online Dance Class", description: "Here’s what you’ll be learning (from the 2:47 mark): https://youtu.be/qrO4YZeyl0I?t=167

It’s iconic, so come get your Gaga on Tues., Dec. 15 at 6pm Pacific. Don’t worry if you don’t have a lot of dance experience – we teach slowly and we even use a music slowing app so that everyone gets the steps. Try something new.", date: "2020-12-15", location: "Online Event", creator_id: 5)

Event.create(title: "The Marsh’s Zoom Storytelling Night: 4 Performers Every Monday", description: "As many of you know, The Marsh has postponed all in-person shows until further notice, but that won’t stop Monday Night Marsh from continuing to bring you the unique stories we all love. Monday Night MarshStream is our new Monday Night Marsh with a few twists. Every Monday at 7:30pm, we bring you 4 live pieces from performers, both familiar and new, via zoom. Audience members who attend the live stream will also get the chance to perform a short 5 to 10 minute piece! Will it be you?", date: "2020-12-14", location: "Zoom", creator_id: 1)

Event.create(title: "4th Annual 'Spread Goodness' Day", description: "This event is to inspire a global day of explosive goodness by encouraging individuals, schools & organizations to spread goodness to show the epic power that one act of goodness multiplied by hundreds, thousands, and maybe millions has to change the world every single day.", date: "2021-03-12", location: "N/A", creator_id: 4)

Event.create(title: "Americana Songwriter Jonathan Foster: Live at Kaleidoscope Coffee", description: "On tour, Americana songwriter Jonathan Foster performs solo, acoustic at Kaleidoscope Coffee in Richmond! www.JFMusic.net", date: "2021-01-06", location: "Kaleidoscope Coffee | 109 Park Pl, Richmond, CA", creator_id: 4)

Event.create(title: "Pacifica Habitats and the Stewards Restoring Them (Zoom)", description: "Pacifica has long been a mecca for activists protecting the environment.  From the preservation of Mori Point, Sweeney Ridge and Pedro Point Headlands to years of activism to ensure a tunnel was built and Montara Mountain saved, people have fought and given their time and money to protect Pacifica’s precious native habitats.  Pacificans willingly continue to pay for their open space and support restoration and preservation with their hearts and hands.
Lynn Adams will discuss projects and successes of the past decade: the transformation of Pedro Point Headlands from the denuded former motorcycle racetrack to a native plant refuge hosting a nearly intact coastal grassland, rare in the Bay Area; the restoration of a beach once covered in invasive iceplant and “CalTrans buckwheat” (Eriogonum parvifolium); and the transformation of the Linda Mar to Rockaway Coastal Trail to a revitalized native plant habitat.  Lynn attributes these successes to taking action to protect and restore open spaces, connecting people to the earth, engaging the public, and educating through experiences to create wildlife meccas.", date: "2021-05-02", location: "Zoom", creator_id: 2)

Event.create(title: "2021 Chinese New Year Parade (San Francisco)", description: "The Southwest Airlines Chinese New Year Parade, celebrating the Year of the Rat, will be on Saturday, February 8, 2020 at 5:15 pm, stepping off at Second and Market Streets. It is a free event for all to attend, but tickets must be purchased to sit in the bleacher sections.", date: "2021-02-20", location: "Chinatown | Washington and Grant, San Francisco, CA", creator_id: 3)

Event.create(title: "Outer Sunset Farmers Market & Mercantile", description: "Come eat, drink, shop, play, connect and be local at the Outer Sunset Farmers Market & Mercantile, a festive open-air, year-round weekly market featuring local farmers, ranchers, food artisans, merchants, makers, artists and organizations on a closed-to-traffic 37th Avenue between Ortega and Pacheco.", date: "2021-01-31", location: "37th Ave and Ortega St, San Francisco, CA", creator_id: 1)

Event.create(title: "'Black Laughs Matter' Virtual Comedy Show", description: "The live comedy scene has been devastated by the closure of all of the comedy clubs, so if you’d like to support black comics, join us for a special “Black Laughs Matter” online comedy show live from San Francisco.", date: "2021-01-30", location: "Online Only", creator_id: 5)

Event.create(title: "10% Off: Virtual Ghirardelli Chocolate Warehouse Sale (Ends Dec. 31)", description: "Shop our unique assortment of signature chocolate SQAURES, exclusive gifts and baking supplies, simply shop the virtual web-sale and pick up in store.

Enjoy an additional 10% off with promo code: FCSFWHS10**
Spend $50 online and receive a FREE GIFT with purchase*", date: "2020-12-31", location: "Ghirardelli Chocolate Factory Store | 1111 139th Avenue, San Leandro, CA", creator_id: 3)

Event.find_each do |event|
    event.attendees << event.creator
end