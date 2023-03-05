import React from "react";
import Card from "react-bootstrap/Card";
import Stack from "react-bootstrap/Stack";

function TrailCard({ trail }) {
  return (
    <Card
      style={{ width: "80%" }}
      onClick={() => window.location.assign(`/TrailSystem/${trail.id}`)}
    >
      <Stack direction="horizontal" gap={1}>
        <Card.Img
          style={{ width: "25%" }}
          src={trail.trail_map}
          alt="trail map"
        />
        <Card.Body>
          {trail.issues.length > 0 ? <Card.Text>⚠️</Card.Text>:""}
          <Card.Title>{trail.name}</Card.Title>
          <Card.Text>{trail.address}</Card.Text>
        </Card.Body>
      </Stack>
    </Card>
  );
}

export default TrailCard;
