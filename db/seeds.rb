Transcription.destroy_all
Item.destroy_all

Item.create!(
  title: "Letter, 1918 September 6, Berthe Eller to Soldier Boy",
  description: "Letter from Berthe Eller to Fred Marshall. Eller thanks Marshall for his letter and his flattery. She indicates that she would like to have Marshall and his friends make a social call some evening. In the postscript she wrote her phone number.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1000/thumbnail.jpg",
  status: "available",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1"
)

Item.create!(
  title: "Letter, 1918 October 7, Berthe Eller to Fred Marshall",
  description: "Letter from Berthe Eller to Fred Marshall. Eller tells Marshall to cheer up and that the war will end soon. She also encourages him to visit her if the quarantine is lifted, and to keep up his literary work.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1001/thumbnail.jpg",
  status: "available",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/2"
)

Item.create!(
  title: "Letter, Fred F. Marshall to Dearest Henriette",
  description: "Letter from Fred Marshall to Henriette. Marshall writes about his feelings for her, hoping she will remember him if they never meet again. He recounts things they did together and defers to her judgement as to what to do with his love for her.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1002/thumbnail.jpg",
  status: "available",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/3"
)

Item.create!(
  title: "Letter, 1919 May 25, Fred F. Marshall to Dear little friend Berthe Eller",
  description: "Letter from Fred Marshall to Berthe Eller. Marshall describes the countryside and how children from Holland run through it carefree. He writes about watching a festival honoring the queen and princess, and closes by asking to be excused for using a typewriter.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1003/thumbnail.jpg",
  status: "in_progress",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/4"
)

Item.create!(
  title: "Letter, Dorothy to My dear boy Fred F. Marshall",
  description: "Letter from Dorothy to Fred Marshall. The letter is written half in English and half in Dutch.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1004/thumbnail.jpg",
  status: "available",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/5"
)

Item.create!(
  title: "Letter, 1919 November 20, Unknown to Fred F. Marshall",
  description: "Letter from unknown sender to Fred Marshall. The sender relates about looking and not finding some of Marshall's private papers, reports on changes in Fred's former office, and asks how Fred is doing.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1005/thumbnail.jpg",
  status: "available",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/6"
)

Item.create!(
  title: "Letter, Votre Freddy Fred F. Marshall to Henriette",
  description: "Letter written in French from Fred Marshall to Henriette. This is a typed version of the transcribed letter to Dearest Henriette. A typed translation is also available as an additional file.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1006/thumbnail.jpg",
  status: "available",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/7"
)

Item.create!(
  title: "Letter, Fred F. Marshall to Unknown",
  description: "A letter written by Fred Marshall advertising his services for companies inadvertently excluded from bids on goods. Marshall offers to help negotiate, supply information regarding procurement activities, and act as a representative to Wright Field and the Air Corps.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1007/thumbnail.jpg",
  status: "available",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/8"
)

Item.create!(
  title: "Letter, 1972 March 30, Fred F. Marshall to Editor Pitkin",
  description: "A letter written by Fred Marshall to Editor Pitkin of The American Legion Magazine, responding to an article by Harvey Ardman. Marshall recounts his time in basic training at Madison Barracks and receiving photography training before being placed in the Hague at the Military Attache headquarters.",
  image_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/1008/thumbnail.jpg",
  status: "completed",
  collection: "Fred F. Marshall Correspondence (MS-53)",
  source_url: "https://corescholar.libraries.wright.edu/special_ms53_correspondence/9"
)

puts "Created #{Item.count} items!"
puts "Ready to transcribe!"
