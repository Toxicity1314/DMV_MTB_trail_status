import React, { useContext, useState } from "react";
import { UserContext } from "../context/user";
import Button from "react-bootstrap/Button";
import Col from "react-bootstrap/Col";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Container from "react-bootstrap/Container";

function Login({ handleClose }) {
  const { setUser } = useContext(UserContext);
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  });
  const [errors, setErrors] = useState([]);

  const handleChange = (e) => {
    let key = e.target.name;
    let value = e.target.value;
    setFormData({ ...formData, [key]: value });
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    fetch(`/login`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(formData),
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => setUser(user));
        setErrors([]);
        handleClose();
      } else {
        res.json().then((err) => setErrors(err.errors));
      }
    });
  };

  return (
    <Container>
      <Form onSubmit={handleSubmit}>
        <Row className="mb-3">
          
            <Form.Label>username</Form.Label>
            <Form.Control
              type="text"
              name="username"
              placeholder="username"
              onChange={(e) => handleChange(e)}
              value={formData.username}
            />
        
        </Row>
        <Row className="mb-3">
          
            <Form.Label>Password</Form.Label>
            <Form.Control
              type="password"
              name="password"
              placeholder="Password"
              onChange={(e) => handleChange(e)}
              value={formData.password}
            />
            <div>{errors}</div>
          
        </Row>
        <Button type="submit">Submit form</Button>
      </Form>
    </Container>
  );
}

export default Login;
