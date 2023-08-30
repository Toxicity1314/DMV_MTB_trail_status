import styled from "styled-components";

export default styled.div`
  @media screen and (min-width: none) and (max-width: 576px) {
  }

  .centerPlease {
    display: flex;
    justify-content: center;
    margin-top: 2%;
  }
  .column {
    width: 185.4px;
    height: 236.567px;
  }

  @media screen and (min-width: none), screen and (max-width: 576px) {
    .narrow {
      padding-left: 5%;
      padding-right: 5%;
    }
  }

  @media screen and (min-width: 577px), screen and (max-width: none) {
    .narrow {
      padding-left: 21%;
      padding-right: 21%;
    }
  }
`;
