import express from "express";
// import {getAllUser,getOneUser,registerUser,loginUser,updateUser,deleteUser,signOutUser,requestRefreshToken,updateUserInfor} from "../controllers/userController.js"
// import { getDrive, uploadFilesMiddleware } from '../googleDrive.js';
// import {verifyToken} from '../middlewares/verify_token.js'
// import {getAllUsers,addAUser,deleteAUser,updateAUser,uploadFile} from "../controllers/userController.js"
import { getDrive, uploadFilesMiddleware } from '../googleDrive.js';

const bookingRouter = express.Router();


// userRouter.get("/all-users", getAllUsers)
// userRouter.post("/add-user", addAUser)
// userRouter.delete("/delete-user/:id", deleteAUser)
// userRouter.put("/update-user", updateAUser)
// userRouter.post("/upload-file",uploadFilesMiddleware, uploadFile)


export default bookingRouter