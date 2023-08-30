import React, { useState, useEffect } from "react";
import TrailSystemList from "./TrailSystemList";
import TrailSystemsForm from "./TrailSystemsForm";
import TrailSystemsPagination from "./TrailSystemsPagination";
import { TrailSystemGrid } from "../styles";

function TrailSystems() {
  const [trailSystems, setTrailSystems] = useState([]);
  const [active, setActive] = useState(1);
  const [trailsToDisplay, setTrailsToDisplay] = useState([]);
  const [trailCount, setTrailCount] = useState(trailSystems.length);
  const [formData, setFormData] = useState({
    sort: "",
    search: "",
    trailsPerPage: 8,
  });

  useEffect(() => {
    fetch(`/trail_systems`)
      .then((r) => r.json())
      .then((trails) => {
        setTrailSystems(trails);
      });
  }, []);
  if (trailSystems.length === 0) return <div>Loading Please wait</div>;

  return (
    <TrailSystemGrid>
      <div>
        <TrailSystemsForm
          active={active}
          setActive={setActive}
          trailSystems={trailSystems}
          setTrailsToDisplay={setTrailsToDisplay}
          setTrailCount={setTrailCount}
          formData={formData}
          setFormData={setFormData}
         />
        <TrailSystemList trailsToDisplay={trailsToDisplay} />
        <TrailSystemsPagination
          trailCount={trailCount}
          active={active}
          setActive={setActive}
          trailSystems={trailSystems}
          setTrailsToDisplay={setTrailsToDisplay}
          trailsPerPage={formData.trailsPerPage}
        />
      </div>
    </TrailSystemGrid>
  );
}

export default TrailSystems;
