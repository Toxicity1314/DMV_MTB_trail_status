import React, { useState, useEffect, useMemo, useContext } from "react";
import TrailSystemList from "./TrailSystemList";
import TrailSystemsForm from "./TrailSystemsForm";
import TrailSystemsPagination from "./TrailSystemsPagination";
import { TrailSystemGrid } from "../styles";
import { FormDataContext } from "../../context/formDataContext";

function TrailSystems() {
  const [trailSystems, setTrailSystems] = useState([]);
  const [active, setActive] = useState(1);
  const [trailCount, setTrailCount] = useState(0);
  const { formData } = useContext(FormDataContext);
  const { setFormData } = useContext(FormDataContext);
  //change active to useContext
  useEffect(() => {
    fetch(`/trail_systems`)
      .then((r) => r.json())
      .then((trails) => {
        setTrailSystems(trails);
        setTrailCount(trails.length);
      });
  }, []);
  const maxActive = useMemo(() => {
    return Math.ceil(trailCount / formData.trailsPerPage);
  }, [trailCount, formData.trailsPerPage]);

  const activeToLarge = useMemo(() => {
    return active >= maxActive;
  }, [active, maxActive]);

  //Why does useMemo work and how???
  const filteredTrails = useMemo(() => {
    let trails = trailSystems.filter((trail) =>
      trail.name.toLowerCase().includes(formData.search.toLowerCase())
    );
    if (trailCount !== 0 && activeToLarge) {
      setActive(maxActive);
    }
    setTrailCount(trails.length);
    return trails;
  }, [formData.search, trailSystems, activeToLarge, maxActive, trailCount]);

  const sortedTrails = useMemo(() => {
    if (formData.sort === "A") {
      return [...filteredTrails].sort((a, b) => a.name.localeCompare(b.name));
    } else if (formData.sort === "Z") {
      return [...filteredTrails].sort((a, b) => b.name.localeCompare(a.name));
    } else if (formData.sort === "rain asc") {
      return [...filteredTrails].sort((a, b) => b.last_72 > a.last_72);
    } else if (formData.sort === "rain desc") {
      return [...filteredTrails].sort((a, b) => a.last_72 > b.last_72);
    } else {
      return filteredTrails;
    }
  }, [formData.sort, filteredTrails]);

  const trailsToDisplay = useMemo(() => {
    const start = (active - 1) * formData.trailsPerPage;
    const end = start + formData.trailsPerPage;
    return sortedTrails.slice(start, end);
  }, [active, sortedTrails, formData.trailsPerPage]);

  if (trailSystems.length === 0) return <div>Loading Please wait</div>;
  return (
    <TrailSystemGrid>
      <div>
        <TrailSystemsForm
          setActive={setActive}
          formData={formData}
          setFormData={setFormData}
        />
        <TrailSystemList trailsToDisplay={trailsToDisplay} />
        <TrailSystemsPagination
          maxActive={maxActive}
          activeToLarge={activeToLarge}
          active={active}
          setActive={setActive}
        />
      </div>
    </TrailSystemGrid>
  );
}

export default TrailSystems;
