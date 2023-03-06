import React, { useState, useEffect, useContext } from "react";
import { useParams } from "react-router-dom";
import { fetchHandler } from "../Fetch";
import TrailMap from "./TrailMap";
import Button from "react-bootstrap/Button";
import ModalForm from "./ModalForm";
import { UserContext } from "../context/user";
import AddComment from "./AddComment";
import CommentCard from "./CommentCard";

function TrailPage() {
  const [buttonPressed, setButtonPressed] = useState(false);
  const [trail, setTrail] = useState("");
  const { user } = useContext(UserContext);
  let { id } = useParams();
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
    let comments = trail
    ? trail.comments.map((comment) => <CommentCard key={comment.id} comment={comment}/>)
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
      <h1 style={{textAlign: "center"}}>{trail.name}</h1>
      {trail ? <TrailMap trail={trail} /> : ""}
      <h3 style={{ textAlign: "center" }}>Rainfall last 24/48/72 hours</h3>
      <h3
        style={{ textAlign: "center" }}
      >{`${trail.last_24}/${trail.last_48}/${trail.last_72} inches`}</h3>
      <h3
        style={{ textAlign: "center" }}
      >{trail.get_last_updated}</h3>
      {user.username && <AddComment trail={trail} setTrail={setTrail}/>}
      {comments}
      
    </div>
  );
}

export default TrailPage;
