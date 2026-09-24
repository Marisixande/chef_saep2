import { userRepository } from "../repositories/userRepository.js";

export const userService ={
    async getUserByEmail(email) {
        const userExist = await userRepository.getUserByEmail(email)
        if(!userExist){
            throw new Error("Usuario não existe");
        }
        return userExist
    }
}