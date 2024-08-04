// const express = require('express')
// const app = express()
// const cors = require('cors')
// const { PrismaClient } = require('@prisma/client');
import express from 'express';
import cors from 'cors';
import { PrismaClient } from '@prisma/client';

const app = express()
var  corsOptions  = {
  origin:["http://localhost:4000"], //frontend url
  credentials: true,
  allowedHeaders:'Origin, X-Requested-With, Content-Type, Accept, Authorization',
  methods:'GET,HEAD,PUT,PATCH,POST,DELETE',
  exposedHeaders:'Content-Range, X-Content-Range'
}


app.use(cors(corsOptions));

app.use(express.json({ limit: '30mb' }));
app.use(express.urlencoded({ extended: true, limit: '30mb' }));


const prisma = new PrismaClient();

app.get('/test', async(req, res) => {

  //  const inf= await prisma.hinh_anh.findMany({
  //   where:{
  //     hinh_id:1
  //   }
  //  });

   const inf= await prisma.binh_luan.findMany();
//     prisma.hinh_anh.findMany();
// //   res.send('Hello World!')
// console.log('sssssssss',inf);
// return inf;
return res.status(200).json(inf)
})


app.get('/', (req, res) => {
  res.send('BACKEND CAP NHAT MOI UPDATED 1121')
})

app.get('/sua', (req, res) => {
  res.send('sua')
})

app.get('/about', (req, res) => {
  res.send('about ')
})

app.listen(9000, () => {
  console.log(`Example app listening on port 9000`)
})