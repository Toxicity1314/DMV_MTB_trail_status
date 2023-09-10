import React from "react";

//runs a script to fetch the trailforks map API at the appropriate location
function TrailMap({ trail }) {
  const iframeSrc = `https://www.trailforks.com/widgets/region_map/?rid=${trail.trail_forks_id}`;

  return (
    <iframe
      title="Trailforks Map"
      src={iframeSrc}
      className="TrailforksWidgetMap trailMap"
      width="100%"
      height="500"
    ></iframe>
  );
}

export default TrailMap;
