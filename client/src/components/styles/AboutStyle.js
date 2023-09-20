import styled from "styled-components";

export default styled.div`
      @media screen and (max-width: 823px) {
        .narrow {
          padding-left: 21%;
          padding-right: 21%;
        }
        .wrap {
          float: left;
          width: 100px;
          shape-margin: 20px;
          margin-right: 20px;
          margin-bottom: 20px;
        }
      }
    
      @media screen and (min-width: 824px) {
        .narrow {
          padding-left: 21%;
          padding-right: 21%;
        }
        .wrap {
          float: left;
          width: 250px;
          shape-margin: 20px;
          margin-right: 20px;
          margin-bottom: 20px;
        }
      }
    
      @media screen and (min-width: 1240px) {
        .narrow {
          padding-left: 21%;
          padding-right: 21%;
        }
        .wrap {
          float: left;
          width: 500px;
          shape-margin: 20px;
          margin-right: 20px;
          margin-bottom: 20px;
        }
      }
  p {
    margin: 0 0 15px 0;
    /* text-align: justify; */
  }


  .caption {
    font-style: italic;
    font-size: 12px;
    text-align: center;
    margin-top: 5px;
  }

  /* .about {
  padding: 20px;
}

h1 {
  text-align: center;
}

.content {
  display: flex;
  flex-wrap: wrap;
}

.left {
  flex: 1;
}

.right {
  flex: 2;
}

.picture {
  max-width: 100%;
}



a {
  text-decoration: none;
  color: #007bff;
}

a:hover {
  text-decoration: underline;
}

 */
`;
