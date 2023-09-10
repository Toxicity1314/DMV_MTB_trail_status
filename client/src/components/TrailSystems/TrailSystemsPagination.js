import React from "react";
import Pagination from "react-bootstrap/Pagination";

function TrailSystemsPagination({
  maxActive,
  activeToLarge,
  active,
  setActive,
}) {
  //sets number buttons for pagination
  let paginationNumbers = [];
  for (let number = 1; number <= maxActive; number++) {
    paginationNumbers.push(
      <Pagination.Item key={number} active={number === active}>
        {number}
      </Pagination.Item>
    );
  }

  //updates what parts of the trail list is displayed based off pagination
  const handlePagination = (e) => {
    let buttonClicked = e.target.textContent;
    if (buttonClicked === "‹Previous" || buttonClicked === "‹") {
      setActive(active - 1);
    } else if (buttonClicked === "«First" || buttonClicked === "«") {
      setActive(1);
    } else if (buttonClicked === "›Next" || buttonClicked === "›") {
      setActive(active + 1);
    } else if (buttonClicked === "»Last" || buttonClicked === "»") {
      setActive(maxActive);
    } else {
      setActive(parseInt(buttonClicked));
    }
  };

  return (
    <div className="centerPlease">
      <Pagination>
        {active > 1 && (
          <Pagination>
            <Pagination.First onClick={(e) => handlePagination(e)} />
            <Pagination.Prev onClick={(e) => handlePagination(e)} />{" "}
          </Pagination>
        )}
        <Pagination onClick={handlePagination}>{paginationNumbers}</Pagination>
        {!activeToLarge && (
          <Pagination>
            <Pagination.Next onClick={(e) => handlePagination(e)} />
            <Pagination.Last onClick={(e) => handlePagination(e)} />
          </Pagination>
        )}
      </Pagination>
    </div>
  );
}

export default TrailSystemsPagination;
