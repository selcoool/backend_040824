import { responseData } from '../helper/responseData.js'
import { Readable } from 'stream';
import { getDrive, uploadFilesMiddleware } from '../googleDrive.js'
import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

export const ser_getAllUsers =()=>new Promise(async(resolve, reject)=>{
    try {

        let data_ser_getAllUsers= await prisma.nguoidung.findMany();
        resolve(
            responseData(
                200,
                "get",
                "successfully",
                data_ser_getAllUsers
            )
        )
       
    } catch (error) {
         reject( responseData(
            500,
            "get",
            "failed",
             error
        ))
    }
})


export const ser_addAUser =(newUser)=>new Promise(async(resolve, reject)=>{
    try {

        let data_ser_addAUser= await prisma.nguoidung.create({data:newUser});
        resolve(
            responseData(
                200,
                "post",
                "successfully",
                data_ser_addAUser
            )
        )
       
    } catch (error) {
         reject( responseData(
            500,
            "post",
            "failed",
             error
        ))
    }
})


export const ser_deleteAUser =(userId)=>new Promise(async(resolve, reject)=>{
    try {
    


        const data_ser_deleteAUser = await prisma.nguoidung.delete({
            where: {
                id: userId,
            },
        });
        resolve(
            responseData(
                200,
                "delete",
                "successfully",
                data_ser_deleteAUser
            )
        )

        console.log('sss',userId)
       
    } catch (error) {
         reject( responseData(
            500,
            "delete",
            "failed",
             error
        ))
    }
})