
List<String> categoryImages = [
  'https://static.thenounproject.com/png/20409-200.png',
  'https://icons-for-free.com/iconfiles/png/512/heart-131965017458786724.png',
  'https://static.vecteezy.com/system/resources/thumbnails/000/553/427/small/teeth_003.jpg',
  'https://cdn.iconscout.com/icon/premium/png-512-thumb/human-brain-2053271-1744012.png',
  'https://cdn0.iconfinder.com/data/icons/family-babies-kids/24/kid-infant-baby-child-children-family-512.png',
  'https://en.pimg.jp/054/574/462/1/54574462.jpg',
  'https://static.thenounproject.com/png/666935-200.png'
];


List<String> doctorImages = [
  'https://i.pinimg.com/originals/4e/54/25/4e542572cff51a9255129a0786a1636f.jpg',
  'https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg',
  'https://image.freepik.com/free-photo/pediatrician-strong-portrait-medical-background-smile_1291-28.jpg',
  'https://thumbs.dreamstime.com/b/smiling-medical-worker-white-coat-tie-portrait-doctor-posing-against-gray-background-185380145.jpg'
];


// Client Side
    // UI & UX
    // Front-end


// API =>  Application Program Interface

      // HTTP 
          // Header => Additional Infor about your request 
          // URL => server & function address 
          // Body => Data House

          // get => to retrive data
          // post => to add data
          // put => update data
          // delete => delete data

          // status code => 200, 201, 404, 403, 400
          // body

      // JSON => Js Object Notation 
          // from Object to JSON => Encode
          // from JSON to Object => Decode
      // Webpage


// Server Side => Machine

    // DB => Database
        // SQL ( Relatioanble DB )
            // MySQL
            // PostgreSQL
            // MsSQl
            // Microsoft Server
            // OracleSQL

        // NoSQL ( Documented DB , NON Relationable DB )
            // MongoDB
            // Firebase ( Cloud Firestore, Realtime DB )

    // Back-end
        // Python => Django, Flask, Bottle, Web2Py, Pyramid
        // PHP => Laravel
        // Ruby => Ruby on Rails
        // JS => Node
        // Java => SE
        // Dart => Angel


// Create class holding el data
// loop on map 
// create a new object from class for each category
// add all objects to list

// Learn Google Flutter Fast => Section 25 Page NO: 16 



main() {

  Map<String, Map<String, dynamic>> data = {
    "-Ml04a7PygrvsfStuksn": {
        "categoryImage": "https://static.thenounproject.com/png/20409-200.png",
        "categoryName": "Child",
        "doctors": [
            {
                "doctorImage": "https://i.pinimg.com/originals/4e/54/25/4e542572cff51a9255129a0786a1636f.jpg",
                "doctorName": "Abd El Sabour",
                "doctorPrice": 200.5,
                "doctorReviews" : [
                  {
                    "userName" : "Sayed",
                    "rating" : 4.9,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ali",
                    "rating" : 4.5,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ahmed",
                    "rating" : 4.3,
                    "comment" : "bla bla"
                  }
                ]
            },
            {
                "doctorImage": "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                "doctorName": "Abd El Shakour",
                "doctorPrice": 299.5,
                "doctorReviews" : [
                  {
                    "userName" : "Mohsen",
                    "rating" : 4.9,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Sayed",
                    "rating" : 3.5,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ahmed",
                    "rating" : 4.1,
                    "comment" : "bla bla"
                  }
                ]
            },
            {
                "doctorImage": "https://image.freepik.com/free-photo/pediatrician-strong-portrait-medical-background-smile_1291-28.jpg",
                "doctorName": "Ali Hassan",
                "doctorPrice": 299.99,
                "doctorReviews" : [
                  {
                    "userName" : "Sayed",
                    "rating" : 4.9,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ali",
                    "rating" : 4.5,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ahmed",
                    "rating" : 4.3,
                    "comment" : "bla bla"
                  }
                ]
            }
        ]
    },
    "-Ml04sL8AGbtjYabWx--": {
        "categoryImage": "https://static.thenounproject.com/png/20409-200.png",
        "categoryName": "Dentist",
        "doctors": [
            {
                "doctorImage": "https://thumbs.dreamstime.com/b/smiling-medical-worker-white-coat-tie-portrait-doctor-posing-against-gray-background-185380145.jpg",
                "doctorName": "Sayed Mohamed",
                "doctorPrice": 230.5,
                "doctorReviews" : [
                  {
                    "userName" : "Sayed",
                    "rating" : 4.9,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ali",
                    "rating" : 4.5,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ahmed",
                    "rating" : 4.3,
                    "comment" : "bla bla"
                  }
                ]
            },
            {
                "doctorImage": "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                "doctorName": "Shaker Ali",
                "doctorPrice": 299.5,
                "doctorReviews" : [
                  {
                    "userName" : "Mona",
                    "rating" : 4.3,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Mina",
                    "rating" : 4.5,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Fathy",
                    "rating" : 1.3,
                    "comment" : "bla bla"
                  }
                ]
            },
            {
                "doctorImage": "https://image.freepik.com/free-photo/pediatrician-strong-portrait-medical-background-smile_1291-28.jpg",
                "doctorName": "Hassan Ali",
                "doctorPrice": 279.99,
                "doctorReviews" : [
                  {
                    "userName" : "Sayed",
                    "rating" : 4.9,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ali",
                    "rating" : 4.5,
                    "comment" : "bla bla"
                  },
                  {
                    "userName" : "Ahmed",
                    "rating" : 4.3,
                    "comment" : "bla bla"
                  }
                ]
            }
        ]
    }
};
}