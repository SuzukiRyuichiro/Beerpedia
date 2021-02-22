import mapboxgl from 'mapbox-gl';

const brewery_name = document.querySelector('.brewery-name').innerText;

const spaceAdder = (string) => {
  const words = string.split(' ');
  const query = words.join('%20');
  return query;
};

const showMap = (centerCoord) => {
  mapboxgl.accessToken = 'pk.eyJ1Ijoic2Nvb3Rlci1zY29vdGVyIiwiYSI6ImNra3J2Z2ozZTBmNDczMXA2MzVvdXdrOHkifQ.RiTFrooZyY_30oinadpaxw';
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: centerCoord,
    zoom: 12
  });

  new mapboxgl.Marker()
    .setLngLat(centerCoord)
    .addTo(map);
};

const mapper = (query) => {
  const httpReq = `https://api.mapbox.com/geocoding/v5/mapbox.places/${spaceAdder(query)}.json?access_token=pk.eyJ1Ijoic2Nvb3Rlci1zY29vdGVyIiwiYSI6ImNra3J2Z2ozZTBmNDczMXA2MzVvdXdrOHkifQ.RiTFrooZyY_30oinadpaxw`;
  fetch(httpReq)
    .then(request => request.json())
    .then((data) => {
      showMap(data.features[0].center);
    });
};

const mapOut = () => {
  return mapper(brewery_name);
}

export 'mapOut';
