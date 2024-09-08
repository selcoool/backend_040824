import express from "express";
// import {getAllUser,getOneUser,registerUser,loginUser,updateUser,deleteUser,signOutUser,requestRefreshToken,updateUserInfor} from "../controllers/userController.js"
// import { getDrive, uploadFilesMiddleware } from '../googleDrive.js';
// import {verifyToken} from '../middlewares/verify_token.js'
import {con_getAllUsers,con_addAUser,con_deleteAUser,con_updateAUser,con_uploadFile} from "../controllers/userController.js"
import { getDrive, uploadFilesMiddleware } from '../googleDrive.js';

const userRouter = express.Router();


userRouter.get("/all-users", con_getAllUsers)
userRouter.post("/add-user", con_addAUser)
userRouter.delete("/delete-user/:id", con_deleteAUser)
userRouter.put("/update-user", con_updateAUser)
userRouter.post("/upload-file",uploadFilesMiddleware, con_uploadFile)


export default userRouter



// /**
//  * @swagger
//  * /api/users/upload-file:
//  *   post:
//  *     summary: Upload a file
//  *     consumes:
//  *       - multipart/form-data
//  *     parameters:
//  *       - in: formData
//  *         name: file
//  *         type: file
//  *         required: true
//  *         description: The file to upload
//  *     responses:
//  *       200:
//  *         description: File uploaded successfully
//  *         content:
//  *           application/json:
//  *             schema:
//  *               type: object
//  *               properties:
//  *                 message:
//  *                   type: string
//  *                   example: File uploaded successfully
//  *                 file:
//  *                   type: object
//  *                   properties:
//  *                     fieldname:
//  *                       type: string
//  *                     originalname:
//  *                       type: string
//  *                     encoding:
//  *                       type: string
//  *                     mimetype:
//  *                       type: string
//  *                     size:
//  *                       type: integer
//  *                     destination:
//  *                       type: string
//  *                     filename:
//  *                       type: string
//  *                     path:
//  *                       type: string
//  *       400:
//  *         description: File upload failed
//  *         content:
//  *           application/json:
//  *             schema:
//  *               type: object
//  *               properties:
//  *                 message:
//  *                   type: string
//  *                   example: File upload failed
//  *                 error:
//  *                   type: string
//  */