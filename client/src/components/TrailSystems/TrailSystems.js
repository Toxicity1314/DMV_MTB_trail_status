import React, { useState, useEffect, useMemo, useContext } from "react";
import TrailSystemCardList from "./TrailSystemCardList";
import TrailSystemList from "./TrailSystemList";
import TrailSystemsForm from "./TrailSystemsForm";
import TrailSystemsPagination from "./TrailSystemsPagination";
import { TrailSystemGrid } from "../styles";
import { FormDataContext } from "../../context/formDataContext";
import { ActiveContext } from "../../context/ActiveContext";

function TrailSystems() {
  const [trailSystems, setTrailSystems] = useState([]);
  const [trailCount, setTrailCount] = useState(0);
  const { formData, setFormData } = useContext(FormDataContext);
  const { active, setActive } = useContext(ActiveContext);

  //Fetch data and handle errors
  useEffect(() => {
    fetch(`/trail_systems`)
      .then((r) => r.json())
      .then((trails) => {
        setTrailSystems(trails);
        setTrailCount(trails.length);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
      });
  }, []);

  //Memoized calculations
  const maxActive = useMemo(() => {
    const trailsPerPage = formData.trailsPerPage || 8;
    return Math.ceil(trailCount / trailsPerPage);
  }, [trailCount, formData.trailsPerPage]);

  const activeToLarge = useMemo(() => {
    return active >= maxActive;
  }, [active, maxActive]);

  const filteredTrails = useMemo(() => {
    let trails = trailSystems.filter((trail) =>
      trail.name.toLowerCase().includes(formData.search.toLowerCase())
    );
    if (trailCount !== 0 && activeToLarge) {
      setActive(maxActive);
    }
    setTrailCount(trails.length);
    return trails;
  }, [
    formData.search,
    trailSystems,
    activeToLarge,
    maxActive,
    trailCount,
    setActive,
  ]);

  const sortedTrails = useMemo(() => {
    let hours = formData.sort.slice(3);
    if (formData.sort === "A") {
      return [...filteredTrails].sort((a, b) => a.name.localeCompare(b.name));
    } else if (formData.sort === "Z") {
      return [...filteredTrails].sort((a, b) => b.name.localeCompare(a.name));
    } else if (formData.sort.match(/\basc(24|48|72)\b/)) {
      return [...filteredTrails].sort(
        (a, b) => b[`last_${hours}`] - a[`last_${hours}`]
      );
    } else if (formData.sort.match(/\bdes(24|48|72)\b/)) {
      return [...filteredTrails].sort(
        (a, b) => a[`last_${hours}`] - b[`last_${hours}`]
      );
    } else {
      return [...filteredTrails];
    }
  }, [formData.sort, filteredTrails]);

  const trailsToDisplay = useMemo(() => {
    const trailsPerPage = formData.trailsPerPage || 8;
    const start = (active - 1) * trailsPerPage;
    const end = start + trailsPerPage;
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
        {formData.listView === false ? (
          <TrailSystemCardList trailsToDisplay={trailsToDisplay} />
        ) : (
          <TrailSystemList trailsToDisplay={trailsToDisplay} />
        )}
        <TrailSystemsPagination
          maxActive={maxActive}
          activeToLarge={activeToLarge}
          active={active}
          setActive={setActive}
        />
      </div>
      <a href="https://open-meteo.com/">Weather data provided by Open-Meteo.com</a>
    </TrailSystemGrid>
  );
}

export default TrailSystems;
