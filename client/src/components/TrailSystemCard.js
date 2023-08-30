import React from "react";
import Card from "react-bootstrap/Card";
import Button from "react-bootstrap/Button";
import { TrailCardStyle } from "./styles";
import favicon from "../favicon.ico";

function TrailSystemCard({ trailSystem }) {
  return (
    <TrailCardStyle>
      <Card className="cardBody">
        {trailSystem.trail_map ? (
          <Card.Img
            className="imageSizing"
            variant="top"
            src={trailSystem.trail_map}
            alt="trail map"
          />
        ) : (
          <Card.Img
            className="imageSizing"
            variant="top"
            src={favicon}
            alt="trail map"
          />
        )}
        <Card.Body className="alert">
          {trailSystem.issues.length > 0 ? (
            <Card.Text className="alert">⚠️</Card.Text>
          ) : (
            ""
          )}
          <Card.Title className="textSizing">{trailSystem.name}</Card.Title>
          <Card.Text className="textSizing">{`${trailSystem.street},\n ${trailSystem.city}, ${trailSystem.state}, ${trailSystem.zipcode} `}</Card.Text>

          <Button
            varient="primary"
            className="textSizing button"
            size="sm"
            onClick={() =>
              window.location.assign(`/TrailSystem/${trailSystem.id}`)
            }
          >
            Trail Information
          </Button>
        </Card.Body>
      </Card>
    </TrailCardStyle>
  );
}

export default TrailSystemCard;
