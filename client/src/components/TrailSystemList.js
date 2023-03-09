import React, { useState, useEffect } from "react";
import TrailSystemCard from "./TrailSystemCard";
import Pagination from "react-bootstrap/Pagination";
import Container from "react-bootstrap/Container";
import Form from "react-bootstrap/Form";

import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

function TrailSystemList({ trailSystems }) {
  const [active, setActive] = useState(1);
  const [trailsToDisplay, setTrailsToDisplay] = useState([]);
  const [formData, setFormData] = useState({ sort: "", search: "" });
  const [trailCount, setTrailCount] = useState(trailSystems.length);

  //useEffect handles updating the trails to display and pagination based off of changes
  //to the sort and search functions
  useEffect(() => {
    let start=(active-1)*4
    let end =start +4
    let filteredTrails = trailSystems.filter((trail) => {
      return trail.name.toLowerCase().includes(formData.search.toLowerCase());
    });
    setTrailsToDisplay(filteredTrails.slice(start, end));
    setTrailCount(filteredTrails.length);
    if (active > Math.ceil(filteredTrails.length / 4)) {
      setActive(Math.ceil(filteredTrails.length / 4));
    }
  }, [formData]);

  //sets number buttons for pagination
  let items = [];
  for (let number = 1; number <= Math.ceil(trailCount / 4); number++) {
    items.push(
      <Pagination.Item key={number} active={number === active}>
        {number}
      </Pagination.Item>
    );
  }

  //updates what parts of the trail list is displayed based off pagination
  const handlePagination = (e) => {
    let start = 0;
    let end = 0;
    if (e.target.textContent === "‹Previous") {
      start = (active - 2) * 4;
      setActive(active - 1);
    } else if (e.target.textContent === "«First") {
      start = 0;
      setActive(1);
    } else if (e.target.textContent === "›Next") {
      start = active * 4;
      setActive(active + 1);
    } else if (e.target.textContent === "»Last") {
      start = (Math.ceil(trailSystems.length / 4) - 1) * 4;
      setActive(Math.ceil(trailSystems.length / 4));
    } else {
      start = parseInt(e.target.textContent - 1) * 4;
      setActive(parseInt(e.target.textContent));
    }

    end = start + 4;
    trailSystems.slice(start, end);
    setTrailsToDisplay(trailSystems.slice(start, end));
  };

  const handleFormChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
    if (e.target.name === "sort" && e.target.value === "A") {
      trailSystems.sort((a, b) => {
        a = a.name.toLowerCase();
        b = b.name.toLowerCase();
        if (a < b) {
          return -1;
        }
        if (a > b) {
          return 1;
        }
        return 0;
      });
    } else if (e.target.name === "sort" && e.target.value === "Z") {
      trailSystems.sort((a, b) => {
        a = a.name.toLowerCase();
        b = b.name.toLowerCase();
        if (a > b) {
          return -1;
        }
        if (a < b) {
          return 1;
        }
        return 0;
      });
    }
    setTrailsToDisplay(
      trailSystems.slice((active - 1) * 4, (active - 1) * 4 + 4)
    );
  };

  return (
    <div>
      <Container style={{paddingBottom:"2%"}}>
        <Form>
          <Row>
            <Col>
              <Form.Label>Sort</Form.Label>
              <Form.Select
                onChange={handleFormChange}
                value={formData.sort}
                name="sort"
              >
                <option value="">Please select a Sort Option</option>
                <option value="A">A to Z</option>
                <option value="Z">Z to A</option>
              </Form.Select>
            </Col>
            <Col>
              <Form.Label>Search</Form.Label>
              <Form.Control
                name="search"
                placeholder="Search"
                onChange={(e) => handleFormChange(e)}
                value={formData.password}
              />
            </Col>
          </Row>
        </Form>
      </Container>
      <Row xs={1} md={4} className="g-4">
        {trailsToDisplay.map((trailSystem, idx) => (
          <Col>
            <TrailSystemCard key={trailSystem.id} trailSystem={trailSystem} />
          </Col>
        ))}
      </Row>
      <div className="centerPlease">
        <Pagination>
          {active > 1 ? (
            <Pagination.First onClick={(e) => handlePagination(e)} />
          ) : (
            ""
          )}
          {active > 1 ? (
            <Pagination.Prev onClick={(e) => handlePagination(e)} />
          ) : (
            ""
          )}
          <Pagination onClick={(e) => handlePagination(e)}>{items}</Pagination>
          {active < Math.ceil(trailCount / 4) ? (
            <Pagination.Next onClick={(e) => handlePagination(e)} />
          ) : (
            ""
          )}
          {active < Math.ceil(trailCount / 4) ? (
            <Pagination.Last onClick={(e) => handlePagination(e)} />
          ) : (
            ""
          )}
        </Pagination>
      </div>
    </div>
  );
}

export default TrailSystemList;
