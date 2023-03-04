import React, { useState, useEffect } from "react";
import { fetchHandler } from "../Fetch";
import TrailCard from "./TrailCard";

function Explore() {
  const [trails, setTrails] = useState("");

  useEffect(() => {
    fetchHandler({ url: `/trail_systems`, set: setTrails });
  }, []);

  let trail_list = trails
    ? trails.map((trail) => <TrailCard key={trail.id} trail={trail} />)
    : "";

  return (
    <div>
      <ul>{trail_list}</ul>
    </div>
  );
}

export default Explore;
