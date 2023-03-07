import React, { useState, useContext } from "react";
import { UserContext } from "../context/user";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";

function AddComment({ trail, setTrail, editComment, setEdit, edit, id }) {
  const { user } = useContext(UserContext);
  const [comment, setComment] = useState(editComment);
  const [errors, setErrors] = useState([]);
  const handleChange = (e) => {
    setComment(e.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    let method = "POST";
    let location = "";
    if (edit) {
      method = "PATCH";
      location = id;
    }

    fetch(`/comments/${location}`, {
      method: method,
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        comment: comment,
        trail_system_id: trail.id,
        user_id: user.id,
      }),
    }).then((res) => {
      if (res.ok) {
        if (edit) {
          res.json().then((updatedComment) => {
            let updatedComments = trail.comments.map((comment) => {
              if (comment.id === updatedComment.id) {
                return updatedComment;
              } else {
                return comment;
              }
            });
            setTrail({ ...trail, comments: updatedComments });
            setEdit(false);
          });
        } else {
          res.json().then((newComment) => {
            setTrail({ ...trail, comments: [...trail.comments, newComment] });
            setComment("");
          });
        }
      } else {
        res.json().then((err) => setErrors(err.errors));
      }
    });
  };
  return (
    <Form onSubmit={handleSubmit} className="commentOutline">
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
        {edit && <Button onClick={() => setEdit(false)}>cancel edit</Button>}
      </Row>
    </Form>
  );
}

export default AddComment;
