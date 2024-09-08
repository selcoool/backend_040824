export const responseData=(status,method,message,data)=>{
  return {
        status:status,
        method:method,
        message:message,
        data:data
    };
}