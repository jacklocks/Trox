import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const mapElement = document.getElementById('map');
    mapboxgl.accessToken = 'pk.eyJ1IjoiY2hhY2hpbGxzIiwiYSI6ImNsZmt6ZGtmMDAwNXUzeW8zYWs1ZTR6ejAifQ.lgzKRSs2gyIavtaSX7kbwQ'
    var map = new mapboxgl.Map ({
      container: 'map',
      style: 'mapbox://styles/mapbox/dark-v10',
      center: [2.209667, 46.232193],
      zoom: 5
    });

    const geocoder = new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl
    });

    if (window.location.pathname === "/tools/new") {

    document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
    geocoder.on('result', function(e) {
      document.getElementById('tool_location').value = e.result.place_name

      console.log(e.result)
    });
  }


    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat])
      .setPopup(new mapboxgl.Popup({ offset: 25 })
      .setHTML(
        "<div class="+"link_popup"+">"+
          "<a href=/tools/"+ marker.id +">" +
          "<h1>"+ marker.name +"</h1>" +
          "<p>"+ marker.location +"</p>"+
          "</a>"+
          "</div>"

      ))
      .addTo(map);
    })

  }
}


