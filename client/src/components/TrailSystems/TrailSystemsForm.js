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
        : e.target.name === "listView"
        ? e.target.checked
        : e.target.value;
    setFormData({ ...formData, [name]: value });
    if (name === "search") setActive(1);
  };

  return (
    <div className="narrow">
      <Container className="centerPlease" style={{ paddingBottom: "2%" }}>
        <Form>
          <Row>
            <Col>
              {/* <Form.Label className="centerPlease">Sort</Form.Label> */}
              <Form.Select
                onChange={(e) => handleFormChange(e)}
                value={formData.sort}
                name="sort"
              >
                <option value="">Sort by</option>
                <option value="A">A to Z</option>
                <option value="Z">Z to A</option>
                <option value="asc24">Most rain 24hr</option>
                <option value="des24">Least rain 24 hr</option>
                <option value="asc48">Most rain 48 hr</option>
                <option value="des48">Least rain 48 hr</option>
                <option value="asc72">Most rain 72 hr</option>
                <option value="des72">Least rain 72 hr</option>
              </Form.Select>
            </Col>
            <Col>
              {/* <Form.Label className="centerPlease">Search</Form.Label> */}
              <Form.Control
                name="search"
                placeholder="Search"
                onChange={handleFormChange}
                value={formData.search}
              />
            </Col>
            <Col>
              {/* <Form.Label className="centerPlease">trails per page</Form.Label> */}
              <Form.Select
                onChange={handleFormChange}
                value={formData.trailsPerPage}
                name="trailsPerPage"
              >
                <option value="0">trails per page</option>
                <option value="4">4</option>
                <option value="8">8</option>
                <option value="16">16</option>
                <option value="24">24</option>
              </Form.Select>
            </Col>
          </Row>
        </Form>
      </Container>

      <Form.Check // prettier-ignore
        type="switch"
        id="custom-switch"
        label="List view"
        name="listView"
        checked={formData.listView}
        onChange={handleFormChange}
      />
    </div>
  );
}

export default TrailSystemsForm;
