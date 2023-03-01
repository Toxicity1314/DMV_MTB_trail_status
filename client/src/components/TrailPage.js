import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { fetchHandler } from "../Fetch";
import TrailMap from "./TrailMap";


function TrailPage() {
  const [trail, setTrail] = useState("");
  let { id } = useParams();
  
  

  useEffect(() => {
    fetchHandler({ url: `/trail_systems/${id}`, set: setTrail });
    // fetch(`/trail_systems/${id}`)
    //   .then((r) => r.json())
    //   .then((data) => {
    //       setTrail(data);

    //       const script = document.createElement("script");
    //       script.src = "https://es.pinkbike.org/ttl-86400/sprt/j/trailforks/widget.js"
    //       script.async = true
    //       script.setAttribute(
    //         "src",
    //         "https://es.pinkbike.org/ttl-86400/sprt/j/trailforks/widget.js"
    //       );
       
    //       document.getElementsByTagName("head")[0].appendChild(script);
    //       let item = document.getElementsByTagName("head")[0]
    //       const widgetCheck = false;
    //       document.getElementsByTagName("head")[0].removeChild(item.lastChild);
 
  // })
  }, []);
  
  //  if(trail){
    
  //  const script = document.createElement("script");
  //  console.log(script)
  //  script.setAttribute(
  //    "src",
  //    "https://es.pinkbike.org/ttl-86400/sprt/j/trailforks/widget.js"
  //  );

  //  document.getElementsByTagName("head")[0].appendChild(script);
  //  const widgetCheck = false;
  //  document.getElementsByTagName("head")[0].removeChild(script);
  // }
  
  // const httpRequest = new XMLHttpRequest();

  // httpRequest.onreadystatechange = () =>{
  //    const script = document.createElement("script");
  //    script.setAttribute(
  //        "src",
  //        "https://es.pinkbike.org/ttl-86400/sprt/j/trailforks/widget.js"
  //      );
      
  //      document.getElementsByTagName("head")[0].appendChild(script);
  //      const widgetCheck = false;
  //  }

  //  httpRequest.open("GET", "https://es.pinkbike.org/ttl-86400/sprt/j/trailforks/widget.js", true);
  //  httpRequest.send();


  let issues = trail
    ? trail.issues.map((issue) => <li key={issue.id}>{issue.issue}</li>)
    : "";
  
  return (
    <div style={{ width: "80%", marginLeft: "10%" }}>
      <ul>{issues}</ul>
      {trail ? <TrailMap trail={trail}/>: ""}
      {/* <div
        className="TrailforksWidgetMap"
        data-w="800px"
        data-h="400px"
        data-rid = {trail.trail_forks_id}
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
        >hello</div>
      <a href="https://www.trailforks.com/region/locust-shade-park-18974/">
        Locust Shade Park
      </a>{" "}
      on <a href="https://www.trailforks.com/">Trailforks.com</a> */}
      <h3 style={{ textAlign: "center" }}>Rainfall last 24/48/72 hours</h3>
      <h3
        style={{ textAlign: "center" }}
      >{`${trail.last_24}/${trail.last_48}/${trail.last_72} inches`}</h3>
    </div>
  );
  
}

export default TrailPage;
