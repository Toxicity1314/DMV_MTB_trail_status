import React, { useState, useEffect } from "react";
import TrailSystemCard from "./TrailSystemCard";
import Pagination from "react-bootstrap/Pagination";
import Container from "react-bootstrap/Container";
import Form from "react-bootstrap/Form";
import { TrailSystemGrid } from "./styles";

import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

function TrailSystemList({ trailSystems }) {
  const [active, setActive] = useState(1);
  const [trailsToDisplay, setTrailsToDisplay] = useState([]);
  const [formData, setFormData] = useState({
    sort: "",
    search: "",
    trailsPerPage: 8,
  });
  const [trailCount, setTrailCount] = useState(trailSystems.length);

  //useEffect handles updating the trails to display and pagination based off of changes
  //to the sort, search, and trialsPerPage functions
  useEffect(() => {
    let start = (active - 1) * formData.trailsPerPage;
    let end = start + formData.trailsPerPage;
    let filteredTrails = trailSystems.filter((trail) => {
      return trail.name.toLowerCase().includes(formData.search.toLowerCase());
    });
    setTrailsToDisplay(filteredTrails.slice(start, end));
    setTrailCount(filteredTrails.length);
    if (active > Math.ceil(filteredTrails.length / formData.trailsPerPage)) {
      setActive(Math.ceil(filteredTrails.length / formData.trailsPerPage));
    }
  }, [formData, active]);

  //sets number buttons for pagination
  let items = [];
  for (
    let number = 1;
    number <= Math.ceil(trailCount / formData.trailsPerPage);
    number++
  ) {
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
    console.log(e.target);
    if (e.target.textContent === "‹Previous" || e.target.textContent === "‹") {
      start = (active - 2) * formData.trailsPerPage;
      setActive(active - 1);
    } else if (
      e.target.textContent === "«First" ||
      e.target.textContent === "«"
    ) {
      start = 0;
      setActive(1);
    } else if (
      e.target.textContent === "›Next" ||
      e.target.textContent === "›"
    ) {
      start = active * formData.trailsPerPage;
      setActive(active + 1);
    } else if (
      e.target.textContent === "»Last" ||
      e.target.textContent === "»"
    ) {
      start =
        (Math.ceil(trailSystems.length / formData.trailsPerPage) - 1) *
        formData.trailsPerPage;
      setActive(Math.ceil(trailSystems.length / formData.trailsPerPage));
    } else {
      start = parseInt(e.target.textContent - 1) * formData.trailsPerPage;
      setActive(parseInt(e.target.textContent));
    }

    end = start + formData.trailsPerPage;
    trailSystems.slice(start, end);
    setTrailsToDisplay(trailSystems.slice(start, end));
  };

  const handleFormChange = (e) => {
    if (e.target.name === "trailsPerPage") {
      setFormData({ ...formData, [e.target.name]: parseInt(e.target.value) });
    } else {
      setFormData({ ...formData, [e.target.name]: e.target.value });
    }
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
    } else if (e.target.name === "search") {
      setActive(1);
    }
    setTrailsToDisplay(
      trailSystems.slice(
        (active - 1) * formData.trailsPerPage,
        (active - 1) * formData.trailsPerPage + formData.trailsPerPage
      )
    );
  };

  return (
    <TrailSystemGrid>
      <div>
        <Container style={{ paddingBottom: "2%" }}>
          <Form>
            <Row>
              <Col>
                <Form.Label className="centerPlease">Sort</Form.Label>
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
                <Form.Label className="centerPlease">Search</Form.Label>
                <Form.Control
                  name="search"
                  placeholder="Search"
                  onChange={(e) => handleFormChange(e)}
                  value={formData.password}
                />
              </Col>
              <Col>
                <Form.Label className="centerPlease">
                  trails per page
                </Form.Label>
                <Form.Select
                  onChange={handleFormChange}
                  value={formData.trailsPerPage}
                  name="trailsPerPage"
                >
                  <option value="4">4</option>
                  <option value="8">8</option>
                  <option value="16">16</option>
                  <option value="24">24</option>
                </Form.Select>
              </Col>
            </Row>
          </Form>
        </Container>
        <Row
          xs={2}
          sm={2}
          md={3}
          lg={4}
          xl={5}
          className="g-4 centerPlease narrow"
        >
          {trailsToDisplay.map((trailSystem) => (
            <Col className="column">
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
            <Pagination onClick={(e) => handlePagination(e)}>
              {items}
            </Pagination>
            {active < Math.ceil(trailCount / formData.trailsPerPage) ? (
              <Pagination.Next onClick={(e) => handlePagination(e)} />
            ) : (
              ""
            )}
            {active < Math.ceil(trailCount / formData.trailsPerPage) ? (
              <Pagination.Last onClick={(e) => handlePagination(e)} />
            ) : (
              ""
            )}
          </Pagination>
        </div>
      </div>
    </TrailSystemGrid>
  );
}

export default TrailSystemList;
