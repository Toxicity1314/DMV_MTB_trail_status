import React from "react";
import Container from "react-bootstrap/Container";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

function TrailSystemsForm({ setActive, formData, setFormData }) {
  const handleFormChange = (e) => {
    const name = e.target.name;
    const value =
      e.target.name === "trailsPerPage"
        ? parseInt(e.target.value)
        : e.target.value;
    setFormData({ ...formData, [name]: value });
    if (name === "search") setActive(1);
  };

  return (
    <div>
      <Container style={{ paddingBottom: "2%" }}>
        <Form>
          <Row>
            <Col>
              <Form.Label className="centerPlease">Sort</Form.Label>
              <Form.Select
                onChange={(e) => handleFormChange(e)}
                value={formData.sort}
                name="sort"
              >
                <option value="">Please select a Sort Option</option>
                <option value="A">A to Z</option>
                <option value="Z">Z to A</option>
                <option value="rain asc">Most rain</option>
                <option value="rain desc">Least rain</option>
              </Form.Select>
            </Col>
            <Col>
              <Form.Label className="centerPlease">Search</Form.Label>
              <Form.Control
                name="search"
                placeholder="Search"
                onChange={handleFormChange}
                value={formData.search}
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
