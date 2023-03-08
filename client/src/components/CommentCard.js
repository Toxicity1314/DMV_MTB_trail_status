import React, { useState, useContext } from "react";
import { UserContext } from "../context/user";
import Button from "react-bootstrap/Button";
import AddComment from "./AddComment";

function CommentCard({ comment, handleClick, trail, setTrail }) {
  const { user } = useContext(UserContext);
  const [edit, setEdit] = useState(false);
  if (edit === false) {
    return (
      <div className="border comment Outline">
        <h6 className="comment User">{comment.user.username}</h6>
        <div className="comment Text">{comment.comment}</div>
        {user.id === comment.user_id ? (
          <Button
            className="deleteCommentButton"
            name="comments"
            size="sm"
            variant="danger"
            onClick={(e) => handleClick(e, comment)}
          >
            Delete Comment
          </Button>
        ) : user.admin ? (
          <Button
            className="deleteCommentButton"
            name="comments"
            size="sm"
            variant="danger"
            onClick={(e) => handleClick(e, comment)}
          >
            Delete Comment
          </Button>
        ) : (
          ""
        )}
        {user.id === comment.user_id ? (
          <Button
            className="editButton"
            size="sm"
            name="edit"
            onClick={() => setEdit(true)}
          >
            Edit
          </Button>
        ) : (
          ""
        )}
      </div>
    );
  } else {
    return (
      <AddComment
        editComment={comment.comment}
        trail={trail}
        setTrail={setTrail}
        setEdit={setEdit}
        edit={edit}
        id={comment.id}
      />
    );
  }
}

export default CommentCard;
