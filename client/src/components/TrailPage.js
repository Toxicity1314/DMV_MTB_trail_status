import React, { useState, useEffect, useContext } from "react";
import { useParams } from "react-router-dom";
import { fetchHandler } from "../Fetch";
import TrailMap from "./TrailMap";
import Button from "react-bootstrap/Button";
import ModalForm from "./ModalForm";
import { UserContext } from "../context/user";

function TrailPage() {
  const [buttonPressed, setButtonPressed] = useState(false);
  const [trail, setTrail] = useState("");
  const { user } = useContext(UserContext);
  let { id } = useParams();
  console.log(user);
  useEffect(() => {
    fetchHandler({ url: `/trail_systems/${id}`, set: setTrail });
  }, [id]);
  const handleClick = (issue) => {
    fetch(`/issues/${issue.id}`, {
      method: "DELETE",
    }).then((res) => {
      if (res.ok) {
        let updatedissues = trail.issues.filter(
          (filterIssue) => filterIssue.id !== issue.id
        );
        console.log(updatedissues);
        setTrail({ ...trail, issues: updatedissues });
      }
    });
  };
  let issues = trail
    ? trail.issues.map((issue) => {
        let trailName = trail.trails.filter(
          (trail) => trail.id === issue.trail_id
        );
        return (
          <li key={issue.id}>
            {issue.issue} on {trailName[0].name}
            {user.admin && <Button onClick={() => handleClick(issue)}></Button>}
          </li>
        );
      })
    : "";

  return (
    <div style={{ width: "80%", marginLeft: "10%" }}>
      <ul>{issues}</ul>
      <Button onClick={() => setButtonPressed("Report an issue")}>
        Report an issue
      </Button>
      {buttonPressed && (
        <ModalForm
          buttonPressed={buttonPressed}
          setButtonPressed={setButtonPressed}
          trail={trail}
          setTrail={setTrail}
        ></ModalForm>
      )}
      {trail ? <TrailMap trail={trail} /> : ""}
      <h3 style={{ textAlign: "center" }}>Rainfall last 24/48/72 hours</h3>
      <h3
        style={{ textAlign: "center" }}
      >{`${trail.last_24}/${trail.last_48}/${trail.last_72} inches`}</h3>
    </div>
  );
}

export default TrailPage;
