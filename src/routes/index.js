import express from 'express'
import userRouter from './userRouter.js'
import bookingRouter from './bookingRouter.js'
import locationRouter from './locationRouter.js'
import commentRouter from './commentRouter.js'

const rootRouter = express.Router()


rootRouter.use("/users",userRouter)
// rootRouter.use("/hinh-anh",imageRouter)

export default rootRouter