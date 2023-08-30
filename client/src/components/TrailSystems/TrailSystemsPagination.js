import React from "react";
import Pagination from "react-bootstrap/Pagination";

function TrailSystemsPagination({
  trailCount,
  active,
  setActive,
  trailSystems,
  setTrailsToDisplay,
  trailsPerPage,
}) {
  //sets number buttons for pagination
  let items = [];
  for (
    let number = 1;
    number <= Math.ceil(trailCount / trailsPerPage);
    number++
  ) {
    items.push(
      <Pagination.Item key={number} active={number === active}>
        {number}
      </Pagination.Item>
    );
  }

  //updates what parts of the trail list is displayed based off pagination
  const handlePagination = (e) => {
    let start = 0;
    let end = 0;
    let buttonClicked = buttonClicked;
    if (buttonClicked === "‹Previous" || buttonClicked === "‹") {
      start = (active - 2) * trailsPerPage;
      setActive(active - 1);
    } else if (buttonClicked === "«First" || buttonClicked === "«") {
      start = 0;
      setActive(1);
    } else if (buttonClicked === "›Next" || buttonClicked === "›") {
      start = active * trailsPerPage;
      setActive(active + 1);
    } else if (buttonClicked === "»Last" || buttonClicked === "»") {
      start =
        (Math.ceil(trailSystems.length / trailsPerPage) - 1) * trailsPerPage;
      setActive(Math.ceil(trailSystems.length / trailsPerPage));
    } else {
      start = parseInt(buttonClicked - 1) * trailsPerPage;
      setActive(parseInt(buttonClicked));
    }

    end = start + trailsPerPage;
    trailSystems.slice(start, end);
    setTrailsToDisplay(trailSystems.slice(start, end));
  };

  return (
    <div className="centerPlease">
      <Pagination>
        {active > 1 ? (
          <Pagination.First onClick={(e) => handlePagination(e)} />
        ) : (
          ""
        )}
        {active > 1 ? (
          <Pagination.Prev onClick={(e) => handlePagination(e)} />
        ) : (
          ""
        )}
        <Pagination onClick={(e) => handlePagination(e)}>{items}</Pagination>
        {active < Math.ceil(trailCount / trailsPerPage) ? (
          <Pagination.Next onClick={(e) => handlePagination(e)} />
        ) : (
          ""
        )}
        {active < Math.ceil(trailCount / trailsPerPage) ? (
          <Pagination.Last onClick={(e) => handlePagination(e)} />
        ) : (
          ""
        )}
      </Pagination>
    </div>
  );
}

export default TrailSystemsPagination;
