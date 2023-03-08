import React, { useState, useEffect } from "react";
import { fetchHandler } from "../Fetch";
import TrailCard from "./TrailCard";

import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

function Explore() {
  const [trails, setTrails] = useState([]);

  useEffect(() => {
    fetchHandler({ url: `/trail_systems`, set: setTrails });
  }, []);

  return (
    <Row xs={1} md={4} className="g-4">
      {trails.map((trail, idx) => (
        <Col>
          <TrailCard key={trail.id} trail={trail} />
        </Col>
      ))}
    </Row>
  );
}

export default Explore;
