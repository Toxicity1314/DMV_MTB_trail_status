import React, { useState, useEffect } from "react";
import TrailSystemList from "./TrailSystemList";

function TrailSystems() {
  const [trailSystems, setTrailSystems] = useState([]);

  useEffect(() => {
    fetch(`/trail_systems`)
      .then((r) => r.json())
      .then((trails) => {
        setTrailSystems(trails);
      });
  }, []);

  return (
    <div>
      {trailSystems.length > 0 ? <TrailSystemList trailSystems={trailSystems}/>:""}
    </div>
  );
}

export default TrailSystems;
