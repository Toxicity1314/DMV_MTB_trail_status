import React from "react";
import Table from "react-bootstrap/Table";
import { NavLink } from "react-router-dom";

function TrailSystemList({ trailsToDisplay }) {
  const warning = (trailSystem) => {
    if (trailSystem.freeze_thaw <= 30) return "Freeze thaw cycle";
    if (trailSystem.last_24 <= 0.25) return "Ride on";
    if (trailSystem.last_24 <= 0.5) return "Use caution trails may be muddy";
    if (trailSystem.last_24 > 0.5) return "Avoid riding trails will be muddy";
  };

  const status = (trailSystem) => {
    if (trailSystem.freeze_thaw <= 30) return <td>🔵</td>;
    if (trailSystem.last_24 <= 0.25) return <td>🟢</td>;
    if (trailSystem.last_24 <= 0.5) return <td>🟡</td>;
    if (trailSystem.last_24 > 0.5) return <td>🔴</td>;
  };

  return (
    <div className="g-4 centerPlease narrow">
      <Table bordered size="sm" hover variant="dark" striped>
        <thead>
          <tr>
            <th>status</th>
            <th>trail name</th>
            <th>rain 24hr (in.)</th>
            <th>rain 48hr (in.)</th>
            <th>rain 72hr (in.)</th>
            <th>warning</th>
          </tr>
        </thead>
        <tbody>
          {trailsToDisplay.map((trailSystem) => (
            <tr key={trailSystem.id}>
              {status(trailSystem)}
              <td>
                <NavLink
                  to={`/TrailSystem/${trailSystem.id}`}
                  className="nav-link"
                >
                  {trailSystem.name}
                </NavLink>
              </td>
              <td>{trailSystem.last_24}</td>
              <td>{trailSystem.last_48}</td>
              <td>{trailSystem.last_72}</td>
              <td>{warning(trailSystem)}</td>
            </tr>
          ))}
        </tbody>
      </Table>
    </div>
  );
}

export default TrailSystemList;
