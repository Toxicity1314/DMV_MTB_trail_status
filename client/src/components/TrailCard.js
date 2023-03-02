import React from "react";
import Card from 'react-bootstrap/Card'
import Stack from 'react-bootstrap/Stack'
import {useNavigate, redirect} from "react-router-dom"




function TrailCard({trail}) {
    let navigate = useNavigate()

  let issues = trail.issues.map(issue => {

  return <li key = {issue.id}>{issue.issue}</li>
})
  
   return (
    <Card style={{width: '80%'}} onClick={()=>window.location.assign(`/TrailSystem/${trail.id}`)}>
        <Stack direction ="horizontal" gap={1}>
        <Card.Img style={{width: "25%"}} src={trail.trail_map} alt="trail map"/>
        <Card.Body>
        <Card.Title >{trail.name}</Card.Title>
        <Card.Text>{trail.address}</Card.Text>
        </Card.Body>
        </Stack>
    </Card>
  );
}

export default TrailCard;