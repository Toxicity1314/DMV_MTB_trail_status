import React, { useState, useContext } from "react";
import { UserContext } from "../context/user";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Container from "react-bootstrap/Container";

function AddComment({ handleClose, trail, setTrail }) {
    const {user} = useContext(UserContext)
  const [validated, setValidated] = useState(false);
  const [comment, setComment] = useState("");
  const [errors, setErrors] = useState([]);
  const handleChange = (e) => {
    setComment(e.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    setValidated(true);
    
    
    fetch(`/comments`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({comment:comment, trail_system_id: trail.id, user_id: user.id}),
    }).then((res) => {
      if (res.ok) {
        res.json().then((newComment) => {
            setTrail({ ...trail, comments: [...trail.comments, newComment] });
     
        });

      } else {
        res.json().then((err) => setErrors(err.errors));
      }
    });
  };
console.log(errors)
  return (
    <Container>
      <Form noValidate validated={validated} onSubmit={handleSubmit}>
        <Row className="mb-5">
          <Form.Label>comment</Form.Label>
          <Form.Control
            as="textarea"
            type="text"
            name="comment"
            placeholder="How was your ride?"
            onChange={(e) => handleChange(e)}
            value={comment}
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

export default AddComment;
