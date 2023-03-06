export function fetchHandler({ url = "", set, method = "GET", set2, set3 }) {
  fetch(url, {
    method: method,
  })
    .then((r) => r.json())
    .then((data) => {
      if (method === "GET") {
        set(data);
      }
    });
}
// export function updateHandler(url = "", set = "", method, add = "", state) {
//   fetch(`http://localhost:9292/${url}`, {
//     method: method,
//     headers: {
//       "Content-Type": "application/json",
//     },
//     body: JSON.stringify(add),
//   })
//     .then((r) => r.json())
//     .then((data) => {
//       set(data);
//       state(false);
//     });
// }
