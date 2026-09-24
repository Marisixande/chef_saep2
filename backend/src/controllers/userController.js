import { userService } from "../services/userService.js";

export const userController = {
    async get(req, res){
        try {
            const user = await userService.getUserByEmail(req.params.email);
            res.json(user)
        } catch (error) {
            res.status(404).json({erro: error.message});
        }
    }
}