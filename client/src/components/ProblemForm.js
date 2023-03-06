import React, { useState } from "react";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Container from "react-bootstrap/Container";

function ProblemForm({ handleClose, trail, setTrail }) {
  const [validated, setValidated] = useState(false);
  const [formData, setFormData] = useState({
    trail_id: "",
    issue: "",
    other: "",
    description: "",
  });
  const [errors, setErrors] = useState([]);

  const handleChange = (e) => {
    let key = e.target.name;
    let value = e.target.value;
    setFormData({ ...formData, [key]: value });
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    setValidated(true);
    let dataToSubmit = formData;
    if(formData.issue === "other"){
      dataToSubmit.issue = formData.other
    }
    dataToSubmit.trail_id = formData.trail_id;
    if (dataToSubmit.issue === "other") {
      dataToSubmit.issue = dataToSubmit.other;
    }
    fetch(`/issues`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(dataToSubmit),
    }).then((res) => {
      if (res.ok) {
        res.json().then((newIssue) => {
          setTrail({ ...trail, issues: [...trail.issues, newIssue] });
        });
        setErrors([]);
        handleClose();
      } else {
        res.json().then((err) => setErrors(err.errors));
      }
    });
  };

  let trailList = trail.trails.map((trail) => {
    return (
      <option key={trail.id} value={trail.id}>
        {trail.name}
      </option>
    );
  });
  return (
    <Container>
      <Form noValidate validated={validated} onSubmit={handleSubmit}>
        <Row className="mb-5">
          <Form.Label>Trail with an issue</Form.Label>
          <Form.Select
            onChange={handleChange}
            value={formData.trail}
            name="trail_id"
          >
            <option>Please select a Trail</option>
            {trailList}
          </Form.Select>
        </Row>
        <Row className="mb-5">
          <Form.Label>Issue on the trail</Form.Label>
          <Form.Select
            onChange={handleChange}
            value={formData.issue}
            name="issue"
          >
            <option value="">Please select an issue</option>
            <option value="Tree down">Tree down</option>
            <option value="Muddy">Muddy</option>
            <option value="Trail overgrown">Trail overgrown</option>
            <option value="other">other</option>
          </Form.Select>
        </Row>
        <Row className="mb-5">
          {formData.issue === "other" && (
            <Form.Group>
              <Form.Label>Please describe the issue</Form.Label>
              <Form.Control
                as="textarea"
                type="text"
                name="other"
                onChange={(e) => handleChange(e)}
                value={formData.other}
              ></Form.Control>
            </Form.Group>
          )}
        </Row>
        <Row className="mb-5">
          <Form.Label>description</Form.Label>
          <Form.Control
            as="textarea"
            type="text"
            name="description"
            placeholder="Please feel free to add anymore descriptions of the issue here"
            onChange={(e) => handleChange(e)}
            value={formData.username}
          />
          {errors}
        </Row>
        <Row className="mb-5">
          <Button type="submit">Submit form</Button>
        </Row>
      </Form>
    </Container>
  );
}

export default ProblemForm;
