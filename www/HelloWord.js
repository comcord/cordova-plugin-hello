cordova.define("cordova-plugin-hello.hello", function(require, exports, module) {
               var callHello = {
               call:function(str,callback,error){
               cordova.exec(callback, error, "hello", "sayHello", [str]);}
               }
            
};
module.exports = callHello;
