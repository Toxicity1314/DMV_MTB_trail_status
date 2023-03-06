import React, { useState, useContext } from "react";
import { UserContext } from "../context/user";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Container from "react-bootstrap/Container";

function CommentCard({ comment }) {
    const {user} = useContext(UserContext)
    console.log(comment)
//   const [validated, setValidated] = useState(false);
//   const [comment, setComment] = useState("");
//   const [errors, setErrors] = useState([]);
// console.log(user)
//   const handleChange = (e) => {
//     setComment(e.target.value);
//   };

  // const handleSubmit = (event) => {
  //   event.preventDefault();
  //   setValidated(true);
    
    
  //   fetch(`/comments`, {
  //     method: "POST",
  //     headers: { "Content-Type": "application/json" },
  //     body: JSON.stringify({comment:comment, trail_system_id: trail.id, user_id: user.id}),
  //   }).then((res) => {
  //     if (res.ok) {
  //       // res.json().then((newIssue) => {
  //       //   setTrail({ ...trail, issues: [...trail.issues, newIssue] });
  //       // });
  //       // setErrors([]);
  //       res.json().then(console.log)
  //     } else {
  //       res.json().then((err) => setErrors(err.errors));
  //     }
  //   });
  // };

  return (
    <Container>
      {comment.comment}
      {user.id === comment.user_id ? <Button></Button>: user.admin ? <Button/>:""}

    </Container>
  );
}

export default CommentCard;
