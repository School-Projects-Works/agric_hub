List<String> parentCategories = [
  "Vegetables",
  "Fruits",
  "Grains",
  "Herbs and Spices",
  "Nuts and Seeds",
  "Legumes",
  "Flowers and Ornamentals",
  "Organic and Specialty Crops",
  "Livestock",
  "Poultry",
  "Aquaculture",
  "Dairy Products",
  "Eggs",
  "Beekeeping",
  "Fibers",
  "Meat Products",
  "Pets and Companion Animals",
  "Processed Foods",
  "Plant-Based Products",
  "Animal-Based Products"
];
List<Map<String, dynamic>> products = [
   {
    "productName": "Lettuce",
    "description":
        "Our fresh lettuce is grown with care and harvested at the peak of freshness. Crisp, vibrant, and full of flavor, this lettuce is perfect for salads, sandwiches, and wraps. Packed with essential nutrients and vitamins, it's a healthy and delicious addition to any meal.",
    "parentCategory": "Vegetables",
    "images": [
      "https://cdn.britannica.com/39/187439-050-35BA4DCA/Broccoli-florets.jpg",
      
      ''
    ]
  },
  {
    "productName": "Fresh Cabbage",
    "description":
        "Our fresh cabbage is a versatile and nutritious vegetable that adds flavor and texture to a variety of dishes. Crisp, crunchy, and packed with vitamins and minerals, this cabbage is perfect for salads, coleslaw, stir-fries, and soups. Enjoy the natural goodness and health benefits of this delicious vegetable.",
    "parentCategory": "Fruits",
    "images": [
     "https://png.pngtree.com/png-vector/20240807/ourlarge/pngtree-fresh-cabbage-png-image_13368896.png"
    ]
  },
  {
    "productName": "Juicy Carrot",
    "description":
        "Fresh carrot at a cheap price",
    "parentCategory": "Fruits",
    "images": [
      "https://thumb.photo-ac.com/35/35c7a51bbfcc4d8220191f0ca083b464_t.jpeg"
    ]
  },
  {
    "productName": "Smoked Tilapia Fish",
    "description":
        "Our smoked tilapia fish is a delicacy that brings the authentic taste of Ghanaian cuisine to your table. Carefully smoked to perfection, this fish is rich in flavor and ideal for various traditional dishes like soups and stews. Enjoy the unique, smoky taste that is a favorite in many households.",
    "parentCategory": "Aquaculture",
    "images": [
      "https://www.luluhypermarket.com/cdn-cgi/image/f=auto/medias/1546151-01.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w0MTY5NDd8aW1hZ2UvanBlZ3xhREZtTDJneU5pOHhNRFU0T1RRMU9EWXlPRFl6T0M4eE5UUTJNVFV4TFRBeExtcHdaMTh4TWpBd1YzZ3hNakF3U0F8NGI3MTYyMDdlYzkxNzZmYTdiMTkwNGM5NmNlZmZhMjRjYTA5MTAzNzI5NWRmNWY4NjVkNjZhYjg1ZDFhNmJkOQ"
    ]
  },
  {
    "productName": "Fresh Plantain Bunch",
    "description":
        "Enjoy the versatile and delicious taste of our fresh plantain bunch. Perfect for frying, boiling, or grilling, plantains are a staple in many Ghanaian dishes. Rich in vitamins and minerals, they offer a healthy and satisfying addition to your meals.",
    "parentCategory": "Fruits",
    "images": [
      "https://gingerandseasalt.com/wp-content/uploads/2023/07/bunch-plantain.jpg",
      "https://www.iyalojadirect.com/wp-content/uploads/2021/02/Plantain.jpg",
      "https://miro.medium.com/v2/resize:fit:528/1*v4PwwsYMeY12AoBycwEKKw.jpeg"
    ]
  },
  {
    "productName": "Organic Shea Butter",
    "description":
        "Our organic shea butter is a natural moisturizer made from the nuts of the shea tree. Rich in vitamins A and E, it provides deep hydration and nourishment for the skin. Ideal for skincare routines and DIY beauty products, this shea butter is a must-have for natural beauty enthusiasts.",
    "parentCategory": "Plant-Based Products",
    "images": [
      "https://neogric.com/wp-content/uploads/2021/03/Neogric-Shea-Butter-Redefining-The-Agric-Supply-Chain-In-Africa-2.jpg",
      "https://media.springernature.com/lw685/springer-static/image/chp%3A10.1007%2F978-3-030-30314-3_107/MediaObjects/417043_1_En_107_Figa_HTML.jpg",

    ]
  },
  
  {
    "productName": "Premium Golden Harvest Wheat",
    "description":
        "Our premium golden harvest wheat is grown with care and harvested at its prime to ensure maximum quality and flavor. Ideal for baking bread, making pasta, or as a nutritious addition to any meal, this wheat offers a wholesome, hearty taste that's rich in fiber and essential nutrients.",
    "parentCategory": "Grains",
    "images": [
      "https://img.lazcdn.com/g/p/90536e9980990fbfc5c16105235e5a1d.png_720x720q80.png",
      "https://standishmilling.com/cdn/shop/files/50lbwheatgrain_1024x1024.jpg?v=1686928987",
      "https://morningchores.com/wp-content/uploads/2020/05/Growing-Wheat-Varieties-Planting-Guide-Care-Problems-and-Harvest-FB.jpg"
    ]
  },
  {
    "productName": "Aromatic Fresh Basil Herb Bouquet",
    "description":
        "Indulge in the fragrant aroma and vibrant flavor of our aromatic fresh basil herb bouquet. Perfect for enhancing your culinary creations, these basil leaves are freshly picked and packed to preserve their natural oils and freshness. Ideal for making pesto, garnishing pizzas, or adding a fresh touch to salads and pasta dishes.",
    "parentCategory": "Herbs and Spices",
    "images": [
      "https://www.themediterraneandish.com/wp-content/uploads/2021/08/Basil-1.jpg",
      "https://www.bluebananadirect.co.uk/cdn/shop/products/31260B81-056B-466A-A2BA-6813F0857E30_1_201_a_2048x.jpg?v=1596457131",
      "https://www.diggers.com.au/cdn/shop/products/organic-basil-sweet-s303_bcac4ae8-9324-42f1-8a08-8526b7866834_2048x.jpg?v=1637121545",
     
    ]
  },
  {
    "productName": "Nutrient-Rich Raw Almond Delight",
    "description":
        "Our nutrient-rich raw almond delight offers a perfect balance of taste and health. These almonds are sourced from the best orchards and are rich in protein, healthy fats, and essential vitamins. Enjoy them as a snack, in your baking, or as a nutritious addition to your salads and dishes.",
    "parentCategory": "Nuts and Seeds",
    "images": [
      "https://www.terrasoul.com/cdn/shop/products/Almonds_1200x1200.jpg?v=1542647911",
      "https://www.ohnuts.com/noapp/showImage.cfm/zoom/Raw%20Almond%20NEW1.jpg",
      "https://dreenaburton.com/wp-content/uploads/2018/04/4191-1-e1524796447842.png",
    ]
  },
 
];

List<String> regionsList = [
  'Greater Accra Region',
  'Ashanti Region',
  'Western Region',
  'Central Region',
  'Eastern Region',
  'Volta Region',
  'Northern Region',
  'Upper East Region',
  'Upper West Region',
  'Bono Region',
  'Bono East Region',
  'Ahafo Region',
  'Western North Region',
  'Oti Region',
  'North East Region',
  'Savannah Region'
];
