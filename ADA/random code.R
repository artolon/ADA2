#Question: Is someone who is born in the summer more likely to choose summer as their favorite season? 

view(C1survey4$Desert.Island)
class(C1survey4$Desert.Island)

C1survey4$Desert.Island <- as.character(C1survey4$Desert.Island)
class(C1survey4$Desert.Island)

C1survey4$Desert.Island

C1survey5$Desert.Island <- as.character(C1survey4 <- C1survey4 %>%
                                          mutate(desert=ifelse(Desert.Island=="Water filter"|Desert.Island=="Unperishable snack"|Desert.Island=="Water desalinator"|Desert.Island=="water filter"|Desert.Island=="Pocket knife "|Desert.Island=="my pocket knife"|Desert.Island=="A multi tool"|Desert.Island=="Fire starter"|Desert.Island=="fire starter"|Desert.Island=="Knife"|Desert.Island=="filtered water bottle"|Desert.Island=="Water filter"|Desert.Island=="fully charged top range satellite phone to communicate with rescuers"|Desert.Island=="flare gun"|Desert.Island=="Water"|Desert.Island=="unlimited clean water"|Desert.Island=="A hunting riffle for safety and food"|Desert.Island=="Bottle"|Desert.Island=="a water purifier/filter", "survival", 
                                                               ifelse(Desert.Island=="a close friend"|Desert.Island=="A puppy"|Desert.Island=="My mom"|Desert.Island=="A friend", "companionship", 
                                                                      ifelse(Desert.Island="Nintendo Switch"|Desert.Island=="a library"|Desert.Island=="A book"|Desert.Island=="Book"|Desert.Island=="photo album"|Desert.Island=="Harry Potter Books"|Desert.Island=="My favorite book"|Desert.Island=="Kindle"|Desert.Island=="Books"|Desert.Island=="My iphone to play music"|Desert.Island=="Guitar"|Desert.Island=="The Library of Alexandria", "entertainment", 
                                                                             ifelse(Desert.Island=="Cell phone"|Desert.Island=="cell phone that has connected to wifi"|Desert.Island=="my phone", "phone", 
                                                                                    ifelse(Desert.Island=="my wits"|Desert.Island=="headphone", "other", 
                                                                                           ifelse(Desert.Island=="Lamp with a genie in it","Lamp with a genie","missing"))))))))  

view(C1survey5$desert)

C1survey4$desert <- as.character(C1survey4$desert)