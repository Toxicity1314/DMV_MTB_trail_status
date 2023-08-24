import React from "react";
import Card from "react-bootstrap/Card";
import Button from "react-bootstrap/Button";
import { TrailCardStyle } from "./styles";
import favicon from "../favicon.ico"

function TrailSystemCard({ trailSystem }) {
  return (
    
    <Card style={{ height: "100%" }}>
      {trailSystem.trail_map ? <Card.Img variant="top" src={trailSystem.trail_map} alt="trail map" />: <Card.Img variant="top" src={favicon} alt="trail map" />}
      <TrailCardStyle>
        <Card.Body className="cardBody">
          {trailSystem.issues.length > 0 ? (
            <Card.Text className="cardBody">⚠️</Card.Text>
          ) : (
            ""
          )}
          <Card.Title className="cardBody">{trailSystem.name}</Card.Title>
          <Card.Text className="cardBody">{trailSystem.address}</Card.Text>
        </Card.Body>
      </TrailCardStyle>
      <Card.Body></Card.Body>
      <Button
        mt-auto
        size="sm"
        onClick={() => window.location.assign(`/TrailSystem/${trailSystem.id}`)}
      >
        Checkout Trail Information
      </Button>
    </Card>
  );
}

export default TrailSystemCard;
