const express = require('express')
const bcrypt = require('bcrypt');
const prisma = require('../lib/prisma');
const jwt = require('jsonwebtoken')

const router = express.Router();



router.post("/register", async (req,res)=>{
    const {name,email,password} = req.body;
    try{
        const hashPassword = await bcrypt.hash(password,10)

        const newStudent =await prisma.student.create({
            data:{
                name,
                email,
                password:hashPassword,
            }
        });
        console.log(newStudent)
    
        res.status(201).json({message: "User created successfully."})
        


    }catch(e){
        console.log(e)
        res.status(500).json({error: e.message});
    }
});
router.post("/login", async (req,res)=>{
    const {email, password } = req.body;

    try{
        const student = await prisma.student.findUnique({
            where: { email }
          });
          if (!student) return res.status(400).json({ message: "Invalid Credentials!" });
      
          const isPasswordValid = await bcrypt.compare(password, student.password);
      
          if (!isPasswordValid)
            return res.status(400).json({ message: "Invalid Credentials!" });
      

        const age= 1000 * 60 * 24 *7;

          const token = jwt.sign({
            id: student.id,
            isAdmin:true,
          },"SecRET",{expiresIn: age})


          const {password:studPassword, ...studInfo}  = student;
        res.cookie("token", token,{
            httpOnly: true,
            maxAge: age,
            // secure:true
        }).json(studInfo);
        
}catch(e){
    console.log(e);
    res.status(500).json({message: "Failed to login"});
}   
});



module.exports = router;