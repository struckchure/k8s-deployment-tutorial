import express from "express";

const app = express();
const port = 8000;

app.get("/", (_req, res) => {
  res.json({ app: "expressjs" });
});

app.listen(port, () => {
  console.log(`app listening on port ${port}`);
});
