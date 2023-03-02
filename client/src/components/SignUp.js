import React, { useContext, useState } from "react";
import {UserContext} from "../context/user"
import Button from "react-bootstrap/Button";
import Col from "react-bootstrap/Col";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Container from "react-bootstrap/Container"
import { useNavigate } from "react-router-dom";

function SignUp() {
  const {setUser} = useContext(UserContext)
  const navigate = useNavigate();
  const [validated, setValidated] = useState(false);
  const [formData, setFormData] = useState({
    first_name: "",
    last_name: "",
    username: "",
    email: "",
    password: "",
    password_confirmation: "",
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
        res.json().then((user) => setUser(user.username));
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
      }else{
        return null
      }
    });
  };

  return (
    <Container>
    <Form noValidate validated={validated} onSubmit={handleSubmit}>
      <Row className="mb-3">
        <Form.Group as={Col} md="4" controlId="validationCustom01">
          <Form.Label>First name</Form.Label>
          <Form.Control
            required
            type="text"
            name="first_name"
            placeholder="First name"
            onChange={(e) => handleChange(e)}
            value={formData.first_name}
            />
          {validated && errorHandler("First")}
        </Form.Group>
        <Form.Group as={Col} md="4" controlId="validationCustom02">
          <Form.Label>Last name</Form.Label>
          <Form.Control
            required
            type="text"
            name="last_name"
            placeholder="Last name"
            onChange={(e) => handleChange(e)}
            value={formData.last_name}
          />
          {validated && errorHandler("Last")}
        </Form.Group>
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
        <Form.Group as={Col} md="6" controlId="formBasicEmail">
          <Form.Label>Email</Form.Label>
          <Form.Control
            required
            type="email"
            name="email"
            placeholder="email"
            onChange={(e) => handleChange(e)}
            value={formData.email}
            />
          {validated && errorHandler("Email")}
        </Form.Group>
        <Form.Group as={Col} md="3" controlId="formBasicPassword">
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
        <Form.Group as={Col} md="3" controlId="formBasicPassword">
          <Form.Label>Confirm Password</Form.Label>
          <Form.Control
            required
            type="password"
            name="password_confirmation"
            placeholder="Confirm password"
            onChange={(e) => handleChange(e)}
            value={formData.password_confirmation}
            />
        </Form.Group>
      </Row>
      <Button type="submit">Submit form</Button>
    </Form>
    </Container>
  );
}

export default SignUp;
