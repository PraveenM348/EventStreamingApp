/* Credits to Online Tutorials  an the link to this amazing tutorial 🤓  https://www.youtube.com/watch?v=yNBObeTWvio*/


/*

https://unsplash.com/photos/PDX_a_82obo?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
https://unsplash.com/photos/hbTKIbuMmBI?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
https://unsplash.com/photos/reEySFadyJQ?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
https://unsplash.com/photos/2cFZ_FB08UM?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink

*/

function onPageLoad(){
	console.log( "document loaded" );
  var url = "http://127.0.0.1:5000/api/get_events"; // Use this if you are NOT using nginx which is first 7 tutorials
  //var url = "/api/get_events"; // Use this if  you are using nginx. i.e tutorial 8 and onwards
  $.get(url,function(data, status) {
      console.log("got response for get_events request");
      if(data) {
      	console.log(data)
      }
  });
}

function onClickedProduct(event) {
  console.log("Buy Now button clicked");
  //var product_id = 
  var title = event.getAttribute("data-title");
  var productId = event.getAttribute("data-productId");
  var timeElapsed = Date.now();
  var time = new Date(timeElapsed);
  var event = "Click"
  //console.log(title,productId,time,event);

  var url = "http://127.0.0.1:5000/api/stream_event"; //Use this if you are NOT using nginx which is first 7 tutorials
  //var url = "/api/stream_event"; // Use this if  you are using nginx. i.e tutorial 8 and onwards

  $.post(url, {
  	name: title,
  	product_id: productId,
  	event: event,
  	timestamp: time.toISOString().split('T')[0] + ' ' + time.toTimeString().split(' ')[0],
  },function(data, status) {
      console.log(data);
      console.log(status);
  });
}

function onHoverProduct(event) {
  console.log("Product Hovered");
  //var product_id = 
  var title = event.getAttribute("data-title");
  var productId = event.getAttribute("data-productId");
  var timeElapsed = Date.now();
  var time = new Date(timeElapsed);
  var event = "Hover"
  //console.log(title,productId,time,event);

  var url = "http://127.0.0.1:5000/api/stream_event"; //Use this if you are NOT using nginx which is first 7 tutorials
  //var url = "/api/stream_event"; // Use this if  you are using nginx. i.e tutorial 8 and onwards

  $.post(url, {
    name: title,
    product_id: productId,
    event: event,
    timestamp: time.toISOString().split('T')[0] + ' ' + time.toTimeString().split(' ')[0],
  },function(data, status) {
      console.log(data);
      console.log(status);
  });
}
window.onload = onPageLoad;