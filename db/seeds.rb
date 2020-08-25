# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users= User.create([
  {
  name:"Morgan", email: "morgan@aol.com", city: "Washington", state: "DC"
  },
  {
  name:"Brad", email: "brad@aol.com", city: "Bethesda", state: "MD"
  },
  {
  name:"Lindsay", email: "lindsay@aol.com", city: "Arlington", state: "VA"
  }
  ])

adventures= Adventure.create([
  {
  user_id: 2,
  title: "Top of the Gate",
  description: "Potomac riverside lounge atop Watergate Hotel with breathtaking view, cocktails & Italian bites.",
  website_url: "https://www.thewatergatehotel.com/dine-and-drink/top-of-the-gate",
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/3e/05/0c/view-at-sunset-at-top.jpg",
  complete: true
  },
  {
  user_id: 1,
  title: "Boat to Mt.Vernon",
  description: "Mount Vernon is an American landmark and former plantation of George Washington, the first President of the United States, and his wife, Martha Washington. The estate is on the banks of the Potomac River in Fairfax County, Virginia, near Alexandria, across from Prince George's County, Maryland",
  website_url: "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwib8oGT0LPrAhUCisgKHZSyBwcYABAAGgJxdQ&ohost=www.google.com&cid=CAESP-D2PpyiCgWbsXksnQbqBVWQloU4DOyRo1QNSHwSW-dfnOFyzFE-uVQ2e7qEvIpvYT7_RerCfUV3hISqsGd9Gw&sig=AOD64_05R8jt1V647aS_XuqiKO7nOAlq8w&q&adurl&ved=2ahUKEwiWkveS0LPrAhUshHIEHRXCBCUQ0Qx6BAgoEAE",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/5/50/WestFrontMansionMountVernon.jpg",
  likes: 5
  },
  {
  user_id: 1,
  title: "Dumbarton Oaks",
  description: "The Garden, designed by renowned landscape gardener Beatrix Farrand, is an oasis within the city. Explore sixteen acres of terraced gardens and vistas, orchards and kitchen gardens, and a vast wilderness of meadows and wooded pathways. The Museum is home to a world-class collection of Byzantine and Pre-Columbian art, housed in magnificent galleries.",
  website_url: "https://www.doaks.org/visit",
  image_url: "https://www.doaks.org/research/library-archives/dumbarton-oaks-archives/historical-records/75th-anniversary/blog/dumbarton-oaks-the-backstory/@@images/4f9ace48-338a-4d56-a3d8-039f0be224e2.jpeg"
  },
  ])

comments= Comment.create([
  {
  text: "Super wonderful!",
  user_id: "3",
  adventure_id: "2"
  },
  {
  text: "Got Seasick",
  user_id: "2",
  adventure_id: "2"
  },
  {
  text: "Dying to go back, drinks were expensive",
  user_id: "1",
  adventure_id: "1"
  }
  ])
