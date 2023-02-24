import React, { useState } from 'react';
import Button from 'react-bootstrap/Button';
import Col from 'react-bootstrap/Col';
import Form from 'react-bootstrap/Form';
import InputGroup from 'react-bootstrap/InputGroup';
import Row from 'react-bootstrap/Row';
import { redirect } from 'react-router-dom';

function SignUp() {
  const [validated, setValidated] = useState(false);
  const [formData, setFormData] = useState({
    first_name:"",
    last_name:"",
    username:"",
    email:"",
    password:"",
    password_confirmation:""
    })
    const [errors, setErrors] = useState([])
    
  const handleChange = (e)=>{
    let key =e.target.name
    let value = e.target.value
    setFormData({...formData, [key]:value})
  }

  const handleSubmit = (event) => {
      event.preventDefault()
    setValidated(true);
        fetch(`/users`,{
            method: 'POST',
            headers:{'Content-Type': 'application/json'},
            body: JSON.stringify(formData)
        })
        .then(res => {
            if (res.ok){
                res.json().then(user => console.log(user))
                redirect("/explore")
            }else{
                res.json().then(err => setErrors(err.errors))
        }
        })  
  };

  console.log(errors)
  const errorHandler = (item)=>{
    let list = errors.filter(error => error.includes(item))
   return list.map(item => <li>{item}</li>)
            
  }

  return (
    <Form noValidate validated={validated} onSubmit={handleSubmit}>
      <Row className="mb-3">
        <Form.Group as={Col} md="4" controlId="validationCustom01">
          <Form.Label>First name</Form.Label>
          <Form.Control
            required
            type="text"
            name="first_name"
            placeholder="First name"
            onChange={(e)=>handleChange(e)}
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
            onChange={(e)=>handleChange(e)}
            value={formData.last_name}
          />
          {validated && errorHandler("Last")}
        </Form.Group>
        <Form.Group as={Col} md="4" controlId="validationCustomUsername">
          <Form.Label>username</Form.Label>
          <InputGroup hasValidation>
            <Form.Control
              required
              type="text"
              name="username"
              placeholder="username"
              onChange={(e)=>handleChange(e)}
              value={formData.username}
            />
            {validated && errorHandler("username")}
          </InputGroup>
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
            onChange={(e)=>handleChange(e)}
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
            onChange={(e)=>handleChange(e)}
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
            onChange={(e)=>handleChange(e)}
            value={formData.password_confirmation}
          />

        </Form.Group>
      </Row>
      <Button type="submit">Submit form</Button>
    </Form>
  );
}

export default SignUp