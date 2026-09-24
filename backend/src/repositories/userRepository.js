import {query} from "../config/db.js";

export const userRepository = {
    async getUserByEmail(email){
        const res = await query("SELECT * FROM tb_usuario WHERE email = $1;", [email]);
        return res.rows[0];
    }
}