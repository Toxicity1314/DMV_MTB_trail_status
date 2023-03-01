import React, { useState, useEffect } from "react";
import { fetchHandler } from "../Fetch";
import TrailCard from "./TrailCard";




function Explore() {
  const [trails, setTrails] = useState("");
  // console.log(trails)
  

  useEffect(() => {
    fetchHandler({url: `/trail_systems`, set: setTrails})
  }, []);

  let trail_list = trails ? trails.map(trail => <TrailCard key ={trail.id} trail={trail}/>):""
  
   return (
    <div>
        <ul>{trail_list}</ul>
        {/* <img src={trail.trail_map} alt="trail map"/> */}
    </div>
  );
}

export default Explore;