import React, { useState } from "react";
import Button from "react-bootstrap/Button";
import Col from "react-bootstrap/Col";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Container from "react-bootstrap/Container"
import { useNavigate } from "react-router-dom";

function Login() {
  const navigate = useNavigate();
  const [validated, setValidated] = useState(false);
  const [formData, setFormData] = useState({
    username: "",
    password: ""
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
    fetch(`/users`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(formData),
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => console.log(user));
        setErrors([]);
        navigate("/TrailSystem/1");
      } else {
        res.json().then((err) => setErrors(err.errors));
      }
    });
  };
  console.log(errors);
  const errorHandler = (item) => {
    let i = 0;
    let list = errors.filter((error) => error.includes(item));
    let last = [];
    return list.map((item) => {
      i++;
      if (!last.includes(item)) {
        last.push(item);
        return <li key={i}>{item}</li>;
      }
    });
  };

  return (
    <Container>
    <Form noValidate validated={validated} onSubmit={handleSubmit}>
      <Row className="mb-3">
        <Form.Group as={Col} md="4" controlId="validationCustomUsername">
          <Form.Label>username</Form.Label>
          <Form.Control
            required
            type="text"
            name="username"
            placeholder="username"
            onChange={(e) => handleChange(e)}
            value={formData.username}
            />
          {validated && errorHandler("Username")}
        </Form.Group>
      </Row>
      <Row className="mb-3">
        <Form.Group as={Col} md="4" controlId="formBasicPassword">
          <Form.Label>Password</Form.Label>
          <Form.Control
            required
            type="password"
            name="password"
            placeholder="Password"
            onChange={(e) => handleChange(e)}
            value={formData.password}
            />
          {validated && errorHandler("Password")}
        </Form.Group>
      </Row>
      <Button type="submit">Submit form</Button>
    </Form>
    </Container>
  );
}

export default Login;
