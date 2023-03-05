import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { fetchHandler } from "../Fetch";
import TrailMap from "./TrailMap";
import Button from "react-bootstrap/Button"
import ModalForm from "./ModalForm";

function TrailPage() {
  const [buttonPressed, setButtonPressed] = useState(false)
  const [trail, setTrail] = useState("");
  let { id } = useParams();

  useEffect(() => {
    fetchHandler({ url: `/trail_systems/${id}`, set: setTrail });
  }, [id]);

  let issues = trail
    ? trail.issues.map((issue) => <li key={issue.id}>{issue.issue}</li>)
    : "";

  return (
    <div style={{ width: "80%", marginLeft: "10%" }}>
      <ul>{issues}</ul>
      <Button onClick={()=>setButtonPressed("Report an issue")}>Report an issue</Button>
      {buttonPressed&& <ModalForm buttonPressed={buttonPressed} setButtonPressed={setButtonPressed} trail={trail}></ModalForm>}
      {trail ? <TrailMap trail={trail} /> : ""}
      <h3 style={{ textAlign: "center" }}>Rainfall last 24/48/72 hours</h3>
      <h3
        style={{ textAlign: "center" }}
      >{`${trail.last_24}/${trail.last_48}/${trail.last_72} inches`}</h3>
    </div>
  );
}

export default TrailPage;
