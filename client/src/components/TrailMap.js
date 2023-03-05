import React, { useEffect } from "react";

//runs a script to fetch the trailforks map API at the appropriate location
function TrailMap({ trail }) {
  useEffect(() => {
    const script = document.createElement("script");
    script.id = "trailForks";
    script.async = true;
    script.setAttribute(
      "src",
      "https://es.pinkbike.org/ttl-86400/sprt/j/trailforks/widget.js"
    );
    document.head.appendChild(script);
    return () => {
      document.getElementById("trailForks").remove();
    };
  }, []);

  return (
    <div style={{ width: "100%", marginLeft: "30%" }}
      id="trailForks2"
      className="TrailforksWidgetMap"
      data-w="800px"
      data-h="400px"
      data-rid={trail.trail_forks_id}
      data-activitytype="1"
      data-maptype="trailforks"
      data-trailstyle="difficulty"
      data-controls="1"
      data-list="0"
      data-dml="1"
      data-layers="labels,poi,polygon,directory,region"
      data-z=""
      data-lat=""
      data-lon=""
      data-hideunsanctioned="0"
    ></div>
  );
}

export default TrailMap;
