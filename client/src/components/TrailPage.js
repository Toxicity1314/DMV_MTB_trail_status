import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { fetchHandler } from "../Fetch";




function TrailPage() {
  const [trail, setTrail] = useState("");
  let {id} = useParams()
  console.log(trail)
  

  useEffect(() => {
    fetchHandler({url: `/trail_systems/${id}`, set: setTrail})
  }, []);
  

  let issues = trail ? trail.issues.map(issue => <li key={issue.id}>{issue.issue}</li>):""
  console.log(issues)
  return (
    <div style={{width:"80%", marginLeft: "10%"}}>
        <ul>{issues}</ul>
        <img style={{width:"100%"}} src={trail.trail_map} alt="trail map"/>
    </div>
  );
}

export default TrailPage;