school_district = {
  madison_elementary: { 
        
        first_grade: {
            ms_brown:{
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            mr_anderson: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            }
        },
        second_grade: { 
            mr_schmidt: {
              room_contents: [
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            }, 
            miss_clark: {
              room_contents:[
                "table", "chair", "chair", "chair", "chair", "chair", 
                "table", "chair", "chair", "chair", "chair", "chair",
              ]
            } 
        },
        third_grade: {
            mrs_mcbride: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            ms_sunny: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            }
        },
        fourth_grade: {
            mr_miller:{
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            mr_shay: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            }
        },
        fifth_grade: {
            mr_crawford: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            },
            mrs_lambert: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            }
        }
    },

  park_elementary: {
        first_grade: {
            mrs_melendez: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            },
            mr_acevedo: {
              room_contents:[            
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            }
        },
        second_grade: { 
            mrs_montoya: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
             ]
            },

            mrs_tapia: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            }
        },

        third_grade: {
            mr_sullivan: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },

            ms_weaver: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            }
        },
        fourth_grade: {
            mrs_zhang: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            mr_rogers: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            }
        },
        fifth_grade: {
            miss_davis: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            mrs_shepard: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            }
        }
  },
  
  butterfield_elementary: {
        first_grade: {
            mrs_dunn: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            ms_galvan: {
              room_contents:[
            "rocking chair", "rug", "chalkboard" 
              ]
            }
        },
        
        second_Grade: { 
            mr_chaney: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            },
            ms_prince: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            }
        },

        third_grade: {
            mrs_kane: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            mrs_payne: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            }
        },
        fourth_grade: {
            mr_hogan: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair", 
              ]
            },
            ms_baird: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair"
              ]
            }
        },
        fifth_grade: {
            mr_powers: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            },
            mrs_hopkins: {
              room_contents:[
            "table", "chair", "chair", "chair", "chair", "chair", 
            "table", "chair", "chair", "chair", "chair", "chair",
              ]
            }
        }
  }
}


p school_district[:butterfield_elementary][:fifth_grade][:mr_powers]

p school_district[:madison_elementary][:third_grade]

p school_district[:butterfield_elementary][:first_grade][:ms_galvan]

school_district[:madison_elementary][:first_grade][:mr_anderson][:room_contents].delete_at(0)

p school_district[:madison_elementary][:first_grade][:mr_anderson]

school_district[:park_elementary][:first_grade].clear

p school_district[:park_elementary][:first_grade]










