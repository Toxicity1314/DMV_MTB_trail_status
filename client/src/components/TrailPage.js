import React, { useState, useEffect, useContext } from "react";
import { useParams } from "react-router-dom";
import TrailMap from "./TrailMap";
import Button from "react-bootstrap/Button";
import ModalForm from "./ModalForm";
import { UserContext } from "../context/user";
import AddComment from "./AddComment";
import CommentCard from "./CommentCard";
import Stack from "react-bootstrap/Stack";
import { TrailPageStyles } from "./styles";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Forcast from "./Forcast";

function TrailPage() {
  const [buttonPressed, setButtonPressed] = useState(false);

  const [trail, setTrail] = useState("");
  const { user } = useContext(UserContext);
  let { id } = useParams();
  useEffect(() => {
    fetch(`/trail_systems/${id}`)
      .then((res) => res.json())
      .then((trail) => {
        setTrail(trail);
      });
  }, [id]);
  const handleClick = (e, item) => {
    fetch(`/${e.target.name}/${item.id}`, {
      method: "DELETE",
    }).then((res) => {
      if (res.ok) {
        let updatedItem = trail[e.target.name].filter(
          (filterItem) => filterItem.id !== item.id
        );
        setTrail({ ...trail, [e.target.name]: updatedItem });
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
            {user.admin && (
              <Button
                name="issues"
                size="sm"
                variant="danger"
                onClick={(e) => handleClick(e, issue)}
              >
                x
              </Button>
            )}
          </li>
        );
      })
    : "";

  let comments = trail
    ? trail.comments.map((comment) => (
        <CommentCard
          key={comment.id}
          comment={comment}
          handleClick={handleClick}
          trail={trail}
          setTrail={setTrail}
        />
      ))
    : "";

  return (
    <TrailPageStyles>
      <div className="trailPageSetup">
        <h1 className="trailPageCenter header">{trail.name}</h1>
        <h3 className="trailPageCenter">Rainfall last 24/48/72 hours</h3>
        <h3 className="trailPageCenter">{`${trail.last_24}/${trail.last_48}/${trail.last_72} inches`}</h3>
        <h3 className="trailPageCenter">{trail.get_last_updated}</h3>
        {trail && <Forcast trail={trail} />}
        <div className="map">{trail ? <TrailMap trail={trail} /> : ""}</div>
        {/* <Row>
          <Col>
            {issues.length > 0 ? <h3>Issues reported</h3> : ""}
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
          </Col>
          <Col>
            {user.username && (
              <div>
                <AddComment trail={trail} setTrail={setTrail} />
              </div>
            )}
            <h3>Comments</h3>
            <div className="box">
              <Stack gap={3}>{comments}</Stack>
            </div>
          </Col>
        </Row> */}
        <a href="https://open-meteo.com/">Weather data provided by Open-Meteo.com</a>
      </div>
    </TrailPageStyles>
  );
}

export default TrailPage;
