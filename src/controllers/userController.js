// import initModels from "../models/init-models.js"
// import sequelize from "../models/connect.js"
// import bcrypt from 'bcryptjs'
// import jwt from 'jsonwebtoken'
// import { responseData } from '../helper/responseData.js'
// import { Readable } from 'stream';
// import { getDrive, uploadFilesMiddleware } from '../googleDrive.js'

// let model = initModels(sequelize)
import { responseData } from '../helper/responseData.js'
import { Readable } from 'stream';
import { getDrive, uploadFilesMiddleware } from '../googleDrive.js'
import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();
import  * as userService from "../services/userService.js";


export const con_getAllUsers = async (req, res) => {

    try {

        const response = await userService.ser_getAllUsers();
        return  res.status(200).json(response) 
    } catch (error) {
        // responseData("400", res, "get", error.message, "Xảy ra lỗi nội bộ")
        return responseData(
            res,
            500,
            "get",
            "error",
            error
        )
    }
}


export const con_addAUser = async (req, res) => {

    try {

        const { }=req.body
        

        const response = await userService.ser_addAUser(req.body);
        return res.status(200).json(response) 
       
    } catch (error) {
        // responseData("400", res, "get", error.message, "Xảy ra lỗi nội bộ")
        return responseData(
            500,
            "get",
            "error",
            error
        )
    }
}


export const con_deleteAUser = async (req, res) => {

    try {
          let {id}=req.params
        const userId = parseInt(id, 10);
    
        const response = await userService.ser_deleteAUser(userId);
    
        return res.status(200).json(userId) 
        
    } catch (error) {
        // responseData("400", res, "get", error.message, "Xảy ra lỗi nội bộ")
        return responseData(
          
            500,
            "delete",
            "error",
            error.message
        )
    }
}


export const con_updateAUser = async (req, res) => {

    try {

        const { id, ...newUser } = req.body;
        const userId = parseInt(id, 10);
        const data_updateAUser = await prisma.nguoidung.update({
            data: newUser,
            where: {
                id: userId,
            },
        });
        return responseData(
      
            200,
            "put",
            "successfully",
            data_updateAUser
        )
        // res.status(200).json(data_getAllUsers) 

    } catch (error) {
        // responseData("400", res, "get", error.message, "Xảy ra lỗi nội bộ")
        return responseData(

            500,
            "put",
            "error",
            error.message
        )
    }
}



export const con_uploadFile = async (req, res) => {

    try {

        const drive = getDrive();
        const image = req.files?.duong_dan;
       
    
        if (image && image.length > 0) {

                for (const file of image) {
                    const bufferStream = new Readable();
                    bufferStream.push(file.buffer);
                    bufferStream.push(null);

                    const response = await drive.files.create({
                        requestBody: {
                            name: file.originalname,
                            parents: ["1q_oPecVEnB4_7V1HHOegwzaVmTNmFVx_"]
                        },
                        media: {
                            mimeType: file.mimetype,
                            body: bufferStream,
                        },
                        fields: '*'
                    });
     
                }

               
           }

           return responseData(

            200,
            "post",
            "ok",
            image.length
        )

      
    } catch (error) {
        // responseData("400", res, "get", error.message, "Xảy ra lỗi nội bộ")
        return responseData(
            500,
            "put",
            "error",
            error.message
        )
    }
}

