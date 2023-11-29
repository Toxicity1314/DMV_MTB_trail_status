import React from "react";
import TrailSystemCard from "./TrailSystemCard";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

function TrailSystemCardList({ trailsToDisplay }) {
  return (
    <Row xs={2} sm={2} md={3} lg={4} xl={5} className="g-4 centerPlease narrow">
      {trailsToDisplay.map((trailSystem) => (
        <Col className="column" key={trailSystem.id}>
          <TrailSystemCard trailSystem={trailSystem} />
        </Col>
      ))}
    </Row>
  );
}

export default TrailSystemCardList;
