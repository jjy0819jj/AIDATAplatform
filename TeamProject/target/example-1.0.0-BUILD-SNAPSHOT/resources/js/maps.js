 function initialize() {
   var myLatlng = new kakao.maps.LatLng(37.502601, 127.024416);
   var myOptions = {
    zoom: 15,
    center: myLatlng,
   }
   var map = new kakao.maps.Map(document.getElementById("map_canvas"), myOptions);
   var marker = new kakao.maps.Marker({
    position: myLatlng, 
    map: map, 
    clickable: true,
    title:"(주)1조"
   });
   
   var iscontent = "(주)1조";
   var isremoveable = true;
   
   var infowindow = new kakao.maps.InfoWindow({
    content: iscontent,
    removable: isremoveable
   });
   kakao.maps.event.addListener(marker, 'click', function() {
	      // 마커 위에 인포윈도우를 표시합니다
	      infowindow.open(map, marker);  
	});
  }
 
 window.onload=function() {
	   initialize();
	  }