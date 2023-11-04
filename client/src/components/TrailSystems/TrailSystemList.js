import React from "react";
import Table from "react-bootstrap/Table";

function TrailSystemList({ trailsToDisplay }) {
  console.log(trailsToDisplay);
  return (
    <div className="g-4 centerPlease narrow">
      <Table bordered size="sm" hover variant="dark" striped>
        <thead>
          <tr>
            <th>status</th>
            <th>trail name</th>
            <th>rain 24hr</th>
            <th>rain 48hr</th>
            <th>rain 72hr</th>
            <th>warning</th>
          </tr>
        </thead>
        <tbody>
          {trailsToDisplay.map((trailSystem) => (
            <tr key={trailSystem.id}>
              {trailSystem.last_24 <= 0.25 ? (
                <td>🟢</td>
              ) : trailSystem.last_24 <= 0.5 ? (
                <td>🟡</td>
              ) : (
                <td>🔴</td>
              )}
              <td>{trailSystem.name}</td>
              <td>{trailSystem.last_24}</td>
              <td>{trailSystem.last_48}</td>
              <td>{trailSystem.last_72}</td>
              <td>in progress</td>
            </tr>
          ))}
        </tbody>
      </Table>
    </div>
  );
}

export default TrailSystemList;
