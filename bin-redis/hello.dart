import 'dart:io';


void main() {

   //start_Server();
  //StopServer();
  //Make_Db_dir();
  StopServer();
  //get_pid();
}




void start_Server (){
Process.run('redis-server',['redis.conf']).then((results) {
     print(results.stdout); 
     print(results.stderr); 

   
     

  });
  }

void Make_Db_dir(){


// Process.start('bin/mongod',['--dbpath','/Users/unlimitedalade/Dartt/bin/data/db']).then((results) {
//      stdout.addStream(results.stdout);
//      print(results.pid);

     
//   });

}

void get_pid(){
  Process.start('ps',['-p','29919']).then((results) {
      stdout.addStream(results.stdout);

});
}


void StopServer(){

Process.run('killall', ['redis-server']).then((value) {
print(value.stderr);
print(value.stdout);

});
  
}



