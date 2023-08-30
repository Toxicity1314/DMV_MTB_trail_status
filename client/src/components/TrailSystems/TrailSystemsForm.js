import React, { useEffect } from "react";
import Container from "react-bootstrap/Container";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

function TrailSystemsForm({
  active,
  setActive,
  trailSystems,
  setTrailsToDisplay,
  setTrailCount,
  formData,
  setFormData,
}) {
  
  //calculates what trails to display based on form selections and pagination
  useEffect(() => {
    let start = (active - 1) * formData.trailsPerPage;
    let end = start + formData.trailsPerPage;
    let filteredTrails = trailSystems.filter((trail) => {
      return trail.name.toLowerCase().includes(formData.search.toLowerCase());
    });
    let maxPagination = Math.ceil(
      filteredTrails.length / formData.trailsPerPage
    );
    setTrailsToDisplay(filteredTrails.slice(start, end));
    setTrailCount(filteredTrails.length);
    if (active > maxPagination) setActive(maxPagination);
  }, [
    formData,
    active,
    setTrailsToDisplay,
    setActive,
    setTrailCount,
    trailSystems,
  ]);

  const handleFormChange = (e) => {
    const name = e.target.name;
    const value =
      e.target.name === "trailsPerPage"
        ? parseInt(e.target.value)
        : e.target.value;
    setFormData({ ...formData, [name]: value });
    if (name === "search") setActive(1);
  };

  const handleSort = (e) => {
    handleFormChange(e);
    if (e.target.value === "A") {
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
    } else if (e.target.value === "Z") {
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
  };

  return (
    <div>
      <Container style={{ paddingBottom: "2%" }}>
        <Form>
          <Row>
            <Col>
              <Form.Label className="centerPlease">Sort</Form.Label>
              <Form.Select
                onChange={(e) => handleSort(e)}
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
                onChange={handleFormChange}
                value={formData.password}
              />
            </Col>
            <Col>
              <Form.Label className="centerPlease">trails per page</Form.Label>
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
    </div>
  );
}

export default TrailSystemsForm;
