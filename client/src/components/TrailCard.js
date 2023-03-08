import React from "react";
import Card from "react-bootstrap/Card";
import Button from "react-bootstrap/Button";
import { TrailCardStyle } from "./styles";

function TrailCard({ trail }) {
  return (
    <Card style={{ height: "100%" }}>
      <Card.Img variant="top" src={trail.trail_map} alt="trail map" />
      <TrailCardStyle>
        <Card.Body className="cardBody">
          {trail.issues.length > 0 ? (
            <Card.Text className="cardBody">⚠️</Card.Text>
          ) : (
            ""
          )}
          <Card.Title className="cardBody">{trail.name}</Card.Title>
          <Card.Text className="cardBody">{trail.address}</Card.Text>
          <Button
            size="sm"
            onClick={() => window.location.assign(`/TrailSystem/${trail.id}`)}
          >
            Checkout Trail Information
          </Button>
        </Card.Body>
      </TrailCardStyle>
    </Card>
  );
}

export default TrailCard;
