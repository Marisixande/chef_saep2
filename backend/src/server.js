import express from "express";
import userRoutes from "../routes/userRoutes.js"
import dotenv from "dotenv";

dotenv.config()
const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());
app.use(userRoutes);

app.listen(PORT, () => {
    console.log(`Servidor do SAEPChef rodando na porta: ${PORT}...`)
});