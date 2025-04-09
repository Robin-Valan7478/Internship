# _DAY 30 @ SURFBOARD PAYMENTS_


## _AI SESSION:_

  - Sriram gave an session on AI, how AI plays important role in today's world, how efficiently we can use AI, how to give correct prompting, and how to use AI in our programming (in Visual Studio). Installed Cline in our VS code and learned about how AI does things or how it works.

### _TOKENS:_

  - Token is like a 75% of English words. the AI will break the given text into tokens and searches it. Think of tokens as the building blocks of how large language models read and understand text. They're not exactly words or letters they are more like bite sized chunks of text that the model breaks things into. For example, the word Football might be split into Foot and ball. This is because LLMs don't always treat a whole word as a single uin it they slice it into pieces they have been trained to understand best. So whether it’s a simple sentence like Hello world or code like const x = 42, everything gets broken into tokens before the model processes it.

### _EMBEDDINGS:_

  - Imagine if every idea word or sentence could be turned into a number or rather, a bunch of numbers that capture its meaning. That’s exactly what embeddings do They translate concepts into coordinates in a super high dimensional space. The cool part Similar ideas end up close to each other in this space. So,for example, the words king and queen would sit nearer to each other than king and apple. It’s like mapping meaning in a way machines can understand and compare.

### _PROMPTING the AI:_

Prompting is basically how we talk to a language model. It's the way we give it instructions or ask questions to get the kind of response we want. Think of it like giving directions the clearer and more specific you are, the better the model understands what you need. Whether it’s writing an essay, solving a problem, or summarizing text, a good prompt sets the stage for a good response. It’s not just about what you say, but how you say it that makes all the difference.

### _MEMORY BANKS:_

Memory Banks are like an organized filing system for ai a way to help it remember things across conversations or sessions. Instead of treating every interaction like a brand new one, Memory Banks allow the ai to store and retrieve past context. They are built around a few key ideas having a central place to keep all the info, using a standardized format so everything is neat and readable, and providing an API so the AI can fetch just what it needs. Also they keep a version history like a memory timeline so nothing gets lost in the process. It's how we give machines a bit of a memory just like us.




## _API SERVICE:_

  - I need to import images from pexels website to my app, I researched in pexels and watched videos to understand how to import images from pexels. i created a dart file in models folder because when we call the API, the API returns a list of photo data such as id, width, height and many but we only need the image link. So we use this class to store the data model. i.e., the image URL link.

  - I created a class named Wallpaper and declared a final variable named imageUrl as String data type which holds the URL of the image. We used factory constructor because we are fetching wallpaper data from pexels API and the data received will be in JSON format. So to convert the JSON format we use this factory constructor. initilayy the photos will be in map, we pass the map to wallpaper.fromJson(photo) and it returns a wallpaper object with imageUrl, so we are converting each JSON item into a dart object 

  - I created a async function in my home page dart file which fetches wallpapers from the internet. initially declared a const String apikey, I pasted my Api key generated from the pexels API. and created a final url variable, if no query is passed it will display default images if not, then what we type or search will be printed, I used ternary operators if user doesn't search anything then it gives default image url if user search for specific then it gives that images.

  - We send the http to the pexels API to fetch images using http.get. This sends an HTTP GET request to the pexels API with the Url and API key in headers.

  - If succesfully I get the data back, then convert the API's JSON response into dart objects and from the full JSON file, we need only th data of the photo and inside setState() we update the UI, we parse each photo JSON and turn it into a wallpaper object if the response is not 200 then return failed to load wallpapers. 

  - why we are comparing response.statuscode == 200 because if we are sending a request to a server, the server sends back respone that has statuscode like 200, 404, 401. 200 means everything worked fine it is succesfully done, 401 means unauthorized API key, 404 means URL is wrong, 500 means Server error.

  - So, this is how I called the Pexela API in my wallpaper application.
