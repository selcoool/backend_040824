import express from 'express'
import cors from 'cors'
import rootRouter from './routes/index.js'
import dotenv from 'dotenv'
import { PrismaClient } from '@prisma/client';
import swaggerUi from 'swagger-ui-express';
import swaggerJsDoc from 'swagger-jsdoc';

var app=express()
dotenv.config();
const port = process.env.PORT || 9000

var  corsOptions  = {
  origin:["https://thegioimauxanh.com","http://localhost:3000","https://peaceful-sunflower-941f16.netlify.app"], //frontend url
  credentials: true,
  allowedHeaders:'Origin, X-Requested-With, Content-Type, Accept, Authorization',
  methods:'GET,HEAD,PUT,PATCH,POST,DELETE',
  exposedHeaders:'Content-Range, X-Content-Range'
}


app.use(cors(corsOptions));

app.use(express.json({ limit: '30mb' }));
app.use(express.urlencoded({ extended: true, limit: '30mb' }));


// Swagger definition
const swaggerDefinition = {
  openapi: '3.0.0',
  info: {
    title: 'Your API Title',
    version: '1.0.0',
    description: 'A description of your API',
  },
  servers: [
    {
      url: 'http://localhost:9000', // URL of your local server
    },
  ],
};

// Options for the swagger docs
const options = {
  swaggerDefinition,
  // Path to the API docs
  apis: ['./src/routes/*.js'], // files containing annotations as above
};

// Initialize swagger-jsdoc
const swaggerSpec = swaggerJsDoc(options);

// Swagger UI setup
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));





app.use(rootRouter)
// const prisma = new PrismaClient()

// app.get('/', (req, res) => {
//   res.send('Hello World!')
// })


// app.get('/test', async(req, res) => {

//   //  const inf= await prisma.hinh_anh.findMany({
//   //   where:{
//   //     hinh_id:1
//   //   }
//   //  });

//    const inf= await prisma.binhluan.findMany();
// //     prisma.hinh_anh.findMany();
// // //   res.send('Hello World!')
// // console.log('sssssssss',inf);
// // return inf;
// return res.status(200).json(inf)
// })

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})











// // const express = require('express')
// // const app = express()
// // const cors = require('cors')
// // const { PrismaClient } = require('@prisma/client');
// import express from 'express';
// import cors from 'cors';
// import { PrismaClient } from '@prisma/client';

// const app = express()
// var  corsOptions  = {
//   origin:["http://localhost:4000"], //frontend url
//   credentials: true,
//   allowedHeaders:'Origin, X-Requested-With, Content-Type, Accept, Authorization',
//   methods:'GET,HEAD,PUT,PATCH,POST,DELETE',
//   exposedHeaders:'Content-Range, X-Content-Range'
// }


// app.use(cors(corsOptions));

// app.use(express.json({ limit: '30mb' }));
// app.use(express.urlencoded({ extended: true, limit: '30mb' }));


// const prisma = new PrismaClient();

// app.get('/test', async(req, res) => {

//   //  const inf= await prisma.hinh_anh.findMany({
//   //   where:{
//   //     hinh_id:1
//   //   }
//   //  });

//    const inf= await prisma.binhluan.findMany();
// //     prisma.hinh_anh.findMany();
// // //   res.send('Hello World!')
// // console.log('sssssssss',inf);
// // return inf;
// return res.status(200).json(inf)
// })


// app.get('/', (req, res) => {
//   res.send('BACKEND CAP NHAT MOI UPDATED 1121')
// })

// app.get('/sua', (req, res) => {
//   res.send('sua')
// })

// app.get('/about', (req, res) => {
//   res.send('about ')
// })

// app.listen(9000, () => {
//   console.log(`Example app listening on port 9000`)
// })