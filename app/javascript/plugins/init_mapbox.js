import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: mapElement,
    style: 'mapbox://styles/mapbox/light-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAaCAYAAACkVDyJAAAABGdBTUEAALGPC/xhBQAAADhlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAqACAAQAAAABAAAAHKADAAQAAAABAAAAGgAAAADINSM4AAAEyklEQVRIDa1Wa2hcVRCeObubZJPspiUVsYS0iO+oCIGkadrY5llqEn/IKqLR4J9oivVFbQ0FA7aKhVK1QaWFpFApSAqWsD5iHuaHIY1U+6/FWmlp2kptUjbPbXLvPeN3b3KXu3k1oheSOefMN/OdM2dmzhL9x09EOC8SSVmpG14JMFxUWkCWNBJzz9hg73HXxiYaujJyjEhqhPhHrEeDxN/9Pdhzw8XMl0sS5hRFgqN6+HkAGkUoP2HIfDQ7mLtzLH4jxaDpb0ikNKGbHQgTn8HmoswSjQ30nGUMXMwCwtCmsgfYkNfgqB6oVS7QK+HwLLz6gHncu77E+C8i/tbHKpqapbodwkgk4uu6OlKrtdinKYPhgo24zmwyaA8plkkt9CwJVwtJhqtfTuKk+zhcWLZDSO8hoZylwayZKapYHYqd7u7z4tbW1KRP3pyodsiJtsNP0Kt3x4qpaXTwp484a1P5vdrQpxCex1ylK3GaSVLURhz4dGyg86K7vpS8a0skc3p6uJY0P4dIVSGZUhEsrRTtGD3d+6Vt54Tu7srKjHjMbENoInOLQ0yqhdNDR2J9p2JLESy3nl1U+ZChzQ6c+IexX3p3utikuwoVln1IpN8C2Z4Uf0brcH/HuAtcqZyNmPUu7rbePiGiNBrwUd7IQO8124fyOmKRddhRmoj+ZMYcvxYuKP0sVLz1QS9mqfHqjZWPhgu2foXruQAfDbPhxH+SLMMiJ5y2beKE4YLyp4Ss6CIOBdnVLSwt72x7Mtrc3Ky9mPCGykISswkdp8brz4uxx/Dxkt00HMI1xbWhaXP8HLazTKbaRnQZyfA5hVSrmlJPaG01IdnmF/58LmcOwlupwbQ8vz2bMSY+hliWzMaBbD3EARqXDzSZyMCVf2gifcZtncarNpaWWKb0wTQR3ju6UXSAxU593PkdPjjt5IB/72h/1xkb6svMvc+wRAwc+RHMFy3aJJ/MViA18IKYchsJUZGk806Yfvb5uc4naYdjA52XXJUa7u+6Pj7Y+15YZeegGzTgos65ykWlUAcblBFMTUFDoPh8DDb+Gyve7uPUOm3KK2jwbV5MoiyuDrTH0XqO4CXIV8xVMPweQIQ++YNBCwr6/UlzphCEJxJa5vNofZEUv68Gl11t6ekLMH4ZpZbUZxOEruGt+JVWAF9ERu6lAD2Mwv0Cf1OOHqdHOM/j7p5hLa/7lL8FuEukVH26z78FmIJp07yI5GrEOGDb4FVJSq4FhMgdAw7r8HL8SiYfVUq6M9Mz1ilSu/Gq7ZsxDBQ1BYCpsNiMcyA9H+Tr45b5hxa9CzFJygMkTZpN7H5OWbgTR4pMJuYimy2hzRPxicui1OFQWkbX+NTEwTk9s0nHROL3I3myFwZ/FoVfAkn3vOCEeJyHEoRzA6f+tD4IsutYusfVY32DQ+YueKTdJOwkzM3N3uZZXrz2woXlcKR34/KfBnjl9emA+U/c2/78YMnxvr5m00tmj5d15jRui3bhfavD9afMN/bOkVi/w9v+qtzsE+3t7ZZX5x0vS+gC1xRXrDVM/SbC14BkCbvrjkTm2sn09vaSr+c39iTc3GRFhK7h6vLyLD2hX0UGv4EGcVOBKDbYcxI1u6BeXZv/Rdq/R3HSf7VZl/gfcoLioX0aS1wAAAAASUVORK5CYII=')`;
    element.style.backgroundSize = 'contain';
    element.style.backgroundRepeat = 'no-repeat';
    element.style.width = '25px';
    element.style.height = '25px';
    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = (mapElement) => {
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers)
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
