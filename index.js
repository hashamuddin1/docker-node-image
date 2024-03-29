const express = require("express");
const app = express();
const port = 5500;

app.get("/user", (req, res) => {
  return res.send({
    status: 201,
    message: "User Created Successfully",
    data: { _id: 1, fullName: "Hasham Uddin", age: 23 },
  });
});

app.listen(port, () => {
  console.log(`Server is running at port ${port}`);
});
